class MainAuthorizer < ApplicationAuthorizer
  authorizer(
    name: "Cognito", # <= name is used as the "function" name
    identity_source: "Authorization", # maps to method.request.header.Authorization
    type: :cognito_user_pools,
    provider_arns: [
      "arn:aws:cognito-idp:us-east-2:050810144108:userpool/us-east-2_WvTqKk7zy", # dev
      # "arn:aws:cognito-idp:us-east-2:050810144108:userpool/us-east-2_LgYifRG4k", # production
    ],
  )
end
