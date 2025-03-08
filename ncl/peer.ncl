{
	Address = std.contract.from_predicate (std.string.is_match "^\\S+@\\S+\\.\\S+$"),
	URI = std.contract.from_predicate (std.string.is_match "[a-zA-Z][a-zA-Z\\d+\\-.]*://\\S+"),
	PGPLongKeyID = std.contract.from_predicate (std.string.is_match "\\w+/[a-fA-F0-9]{16}"),
	PGPFingerPrint = std.contract.from_predicate (std.string.is_match "([a-fA-F0-9]{4} *){10}"),
	PGPKey = {
		long-key-id | PGPLongKeyID,
		fingerprint | PGPFingerPrint,
	},
	Peer = {
		name
			| std.string.NonEmpty,
		aliases
			| doc "Other names you may go by"
			| std.array.NonEmpty
			| optional,
		email
			| Address
			| optional,
		xmpp
			| Address
			| optional,
		uri
			| doc "Hyperlink to website"
			| URI
			| optional,
		pronouns
			| Array std.string.NonEmpty
			| std.array.NonEmpty
			| optional,
		pgp_keys
			| Array PGPKey
			| std.array.NonEmpty
			| optional,
	},
}
