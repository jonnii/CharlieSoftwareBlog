Feature: Managing Articles
  In order to make a blog
  As an author
  I want to be able to add, edit and remove articles

  Scenario: Articles list
    Given I have articles called "Bridges, Skyscrapers"
    When I go to the home page
    Then I should see "Bridges"
    And I should see "Skyscrapers"

  Scenario: Create an article with new tags
    Given I have no articles    
    And I have no tags
    And I am on the home page
    When I follow "New article"
    And I fill in "Title" with "Bananas"
    And I fill in "Body" with "An article all about bananas"
    And I fill in "Tags" with "fruit, yellow, food"
    And I press "Save"
    Then I should see "Article was successfully created."
    And I should see "Bananas"
    And I should see "fruit"
    And I should see "yellow"
    And I should see "food"
    And I should have 1 article
    And I should have 3 tags

  Scenario: Create an article with existing tags
    Given I have no articles
    And I have tags "cheese,marmite"
    And I am on the home page
    When I follow "New article"
    And I fill in "Title" with "Bananas"
    And I fill in "Body" with "An article all about bananas"
    And I fill in "Tags" with "cheese, marmite"
    And I press "Save"
    Then I should have 2 tags

  Scenario: Update an existing article
    Given I have an article with title "Big Bananas" and body text "Big bananas are good for you"
    And I have tags "cheese, marmite"
    And I am on the home page
    When I follow "Edit" for "Big Bananas"
    And I fill in "Title" with "Massive Bananas"
    And I press "Update"
    Then I should see "Article was successfully updated."
    And I should have an article titled "Massive Bananas"
    And I should not have an article titled "Big Bananas"


