httr::user_agent(
  sprintf(
    "emailrep package v%s: (<%s>)",
    utils::packageVersion("emailrep"),
    utils::packageDescription("emailrep")$URL
  )
) -> .EMAILREP_UA