let { Peer, .. } = import "../ncl/peer.ncl" in
[
	{
		name = "toastal",
		email = "toastal@posteo.net",
		uri = "https://toast.al",
		pronouns = ["he/him", "เขา", "ລາວ"],
		pgp_keys = [
			{
				long-key-id = "ed25519/5CCE6F1466D47C9E",
				fingerprint = "7944 74B7 D236 DAB9 C9EF  E7F9 5CCE 6F14 66D4 7C9E",
			}
		],
	}
] | Array Peer
