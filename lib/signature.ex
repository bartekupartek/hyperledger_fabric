defmodule HyperledgerFabric.Signature do
  @moduledoc """
  Functions for working with cryptographic signatures.
  """

  require Record

  def load_signature_records do
    record_path = Application.fetch_env!(:hyperledger_fabric, :ecdsa_signature_record_path)

    Record.defrecord(
      :ecdsa_sig_value,
      :ECDSASigValue,
      Record.extract(:"ECDSA-Sig-Value", from_lib: record_path)
    )
  end

  # Load the record definition
  load_signature_records()

  @doc """
  Prevents signature malleability by ensuring the 's' value is in the lower half of the curve's order.

  Follows BIP-0062 (Bitcoin Improvement Proposal) to ensure ECDSA signatures have a unique representation.
  This helps prevent replay attacks by ensuring the 's' value is always in the lower half of the curve's order.

  See: https://github.com/bitcoin/bips/blob/master/bip-0062.mediawiki
  """
  def prevent_malleability(signature) do
    import Bitwise

    ecdh_params = :crypto.ec_curve(:secp384r1)

    {{:prime_field, _prime}, {_curve_a, _curve_b, _seed}, _base_point, order, _co_factor} =
      ecdh_params

    n_int = :crypto.bytes_to_integer(order)

    half_order = n_int >>> 1

    {_, r, s} = :public_key.der_decode(:"ECDSA-Sig-Value", signature)

    new_s = if s > half_order, do: n_int - s, else: s

    sig_val = ecdsa_sig_value(r: r, s: new_s)

    # Encode to DER format
    :public_key.der_encode(:"ECDSA-Sig-Value", sig_val)
  end
end
