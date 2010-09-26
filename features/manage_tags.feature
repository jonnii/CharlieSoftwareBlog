Feature: View article by tag
  In order to view articles by tag
  As a user
  I want to be able to see articles for a specific tag

  Scenario: View articles by tag
    Given I have an article "Fast cars" with tags "ferrari,aston martin"
    Given I have an article "Italian cars" with tags "ferrari"
    Given I have an article "Slow cars" with tags "skoda"
    And I am on the home page
    When I follow "ferrari"
    Then I should see "Fast cars"
    And I should see "Italian cars"
    And I should not see "Slow cars"
