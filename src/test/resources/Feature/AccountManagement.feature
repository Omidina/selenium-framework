@AccountManagement
Feature: Account Management

  @CreateAccount
  Scenario Outline: Create an account using valid email address
    Given I am on create an account page
    When I enter "<FirstName>" "<LastName>" "<Email>" "<Password>" "<ConfirmPassword>"
    And I click on create an account
    Then My account page is displayed


    Examples:
      | FirstName | LastName | Email              | Password  | ConfirmPassword |
      | John      | Doe      | Johndoe7@gmail.com | London123 | London123       |

  Scenario Outline: Create an account - Duplicate account creation not allowed
    Given I am on create an account page
    When I enter "<FirstName>" "<LastName>" "<Email>" "<Password>" "<ConfirmPassword>"
    And I click on create an account
    Then Error message should display showing account already exist


    Examples:
      | FirstName | LastName | Email              | Password  | ConfirmPassword |
      | John      | Doe      | Johndoe7@gmail.com | London123 | London123       |


  @AccountLogIn
  Scenario Outline: Account log in - Registered customer
    Given I am on log in page
    When I enter "<Email>" "<Password>"
    And I click on log in button
    Then Account is logged in successfully


    Examples:
      | Email              | Password  |
      | Johndoe7@gmail.com | London123 |