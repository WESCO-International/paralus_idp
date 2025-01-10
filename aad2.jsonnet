local claims = std.extVar('claims');
 
{
  identity: {
    traits: {
      "email": "upn",
      "first_name": "given_name",
      "last_name": "family_name",
      "idp_groups": "groups"

    }
  }
}
