-module(minter).
-include_lib("public_key/include/public_key.hrl").
-export([genPEMKey/0]).

genPEMKey() ->
    CurveId = secp256k1,
    {PubKey, PrivKey} = crypto:generate_key(ecdh, CurveId),
    Key = #'ECPrivateKey'{version = 1,
                      privateKey = PrivKey,
                      parameters = {
                        namedCurve,
                        pubkey_cert_records:namedCurves(CurveId)},
                      publicKey = PubKey},
    DERKey = public_key:der_encode('ECPrivateKey', Key).
    public_key:pem_encode([{'ECPrivateKey', DERKey, not_encrypted}]).
