local claims = std.extVar('claims');
{
  identity: {
    traits: {
      [if 'upn' in claims.raw_claims then 'email' else null]: claims.raw_claims.upn,
    },
  },
}
