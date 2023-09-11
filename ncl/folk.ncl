{
	name | String,
	aliases | Array String | default = [],
	email | String | optional,
	uri | String | optional,
	pronouns | Array String | default = [],
	keys | Array { long-key-id | String, fingerprint | String } | default = [],
}
