@Login
Feature: User want to login to the Happyfresh system

  @Login
  Scenario Outline: User Success login to Happyfresh apps
    Given user click Agree
    Then user Skip the pop up
    Then user Allow the permit
    And user click Account menu
    Then user click Welcome
    And user click Login here
    When user input "<email>" address
    Then user input "<password>"
    Then user click Login button
    Then user click go back navigation
    And user go back to Home menu
    When user click the delivery destination
    And user want to input the "<destination>"
    And user click the destination list
    Then user Confirm the destination
    Then user try to pick the product
    And user add to cart the product
    Then user click the cart


    Examples:
      | email | password | destination |
      | testuser01@gmail.com | testuser01 | Tanjung Duren Selatan |
