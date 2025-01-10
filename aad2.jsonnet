local claims = {
  email_verified: false,
} + std.extVar('claims');

{
  identity: {
    traits: {
      [if 'email' in claims && claims.unique_name_verified then 'email' else null]: claims.email,
      [if "given_name" in claims then "first_name" else null]: claims.given_name,
      [if "family_name" in claims then "last_name" else null]: claims.family_name,
      [if "groups" in claims.raw_claims then "idp_groups" else null]: claims.raw_claims.groups,
    },
  },
}
