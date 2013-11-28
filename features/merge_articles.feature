Feature: Merge Two Articles
  As a blog administrator
  In order to view two articles on same topic at once
  I want to be able to merge two artices on same topic into one article

  Background:
    Given the following articles exist:
    | id | title        | body           | type    | permalink | state     | published_at            |
    | 10 | Foobar       | Lorem Ipsum    | Article | foobar    | published | 2013-11-28 21:51:55 UTC |
    And   the blog is set up
    And   I am logged into the admin panel
    When  I am on the all articles page
    And   I follow "Hello World!"
    Then  I should see "Merge Articles"

  Scenario: The merged article should contain the text of both previous articles
    When  I fill in "merge_with" with "10"
    And   I press "Merge"
    Then  I should be on the admin content page
    And   I should see "Article was successfully updated."
    Then  I follow "Hello World!"
    And   I should see "Lorem Ipsum"
