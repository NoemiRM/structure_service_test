Feature: user request weather

  Scenario:
    Given an registered user in the system
    When the user requests the weather of "Lima" city
    Then the system returns the following information:
      | name    | Lima |
      | country | PE   |