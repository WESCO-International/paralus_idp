// azuread-to-paralus-mapper.jsonnet
//local claims = std.extVar('claims');
{
  // Map user groups in Azure AD to Paralus roles
  "roleMappings": [
    {
      // Example: Azure AD group 'admin' maps to Paralus 'admin' role
      "azureGroup": "admin-group-id",  // Replace with your Azure AD group's object ID or name
      "paralusRole": "admin"           // Paralus role name
    },
    {
      // Example: Azure AD group 'dev' maps to Paralus 'developer' role
      "azureGroup": "dev-group-id",    // Replace with your Azure AD group's object ID or name
      "paralusRole": "developer"       // Paralus role name
    }
  ],
 
  // Optional: Custom claim to map to Paralus roles
  "claimMappings": [
    {
      // Example: Azure AD claim 'role' maps to Paralus 'admin' role
      "azureClaim": "role",            // Azure AD claim type
      "paralusRole": "admin"           // Paralus role to map to
    }
  ],
 
  // Optional: Mapping user information
  "userMappings": {
    "email": "userPrincipalName",      // Map Azure AD's userPrincipalName to Paralus email
    "fullName": "displayName"          // Map Azure AD's displayName to Paralus fullName
  }
}
