Feature: Traversing through google search

  @bat
  Scenario: Google search

    Given User enters udemy url
    When User searches for "cucumber"
    Then User should validate result fetched
