local claims = std.extVar('claims');
{
  identity: {
    traits: {
      [if 'upn' in claims.raw_claims then 'email' else null]: claims.email,
    },
  },
}
