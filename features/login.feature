Feature: Oracle Login test

@login
Scenario Outline: Invalid login with user
  Given User has opened Oracle Profile page
  When User inputs <email> as the email
  And User inputs <password> as the password
  And User presses the sing in button
  Then User sees invalid credentials message

  Examples:
      | email             | password            |
      | jhskfgj@gmail.com | Password123         |
      # | 345njdf@gmail.com | Password123fnd      |
      # | kfgm44@gmail.com  | Passwordvbdqw34123  |