Feature: Traversing through udemy

  Scenario: Udemy search

    Given User enters udemy url
    When User searches for "cucumber"
    Then User should validate result fetched
