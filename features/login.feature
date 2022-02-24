Feature: Oracle Login test

@login
Scenario Outline: Invalid login with user
  Given User has opened Oracle Profile Page
  When User inputs <email> as the email
  And User inputs <password> as the password 
  And User presses the sign in button
  Then User sees invalid credentials message

  Examples:
      | email               | password        |
      | fdsafsda@gmail.com  | fdasfa2321dsa   |
      # | eefad231@gmail.com  | faasffdasfdaa   |
      # | emailsdf@gmail.com  | fdasfavcxaaxc   |
