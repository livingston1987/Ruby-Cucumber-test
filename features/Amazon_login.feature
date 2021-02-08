Feature: Amazon Login Functionality

  Scenario Outline: Logging into Amazon Application
    Given User launches Amazon Application
    When User provides Valid <username> and <password>
    Then User should be able to see  firstname <name> on his account page
    Examples:
    |username|password|name|
    |livingston7@gmail.com|Jclivida@10|David|

  Scenario Outline: Logging into Amazon Application
    Given User launches Amazon Application
    When User provides Valid <username> but invalid <password>
    Then User should be able to get Login failed <message>
    Examples:
      |username|password|message|
      |livingston7@gmail.com|Test|Your password is incorrect|
