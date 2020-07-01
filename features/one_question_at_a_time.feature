Feature: A question at a time

  In order to answer quiz questions
  As a quiz taker
  I should see one question at a time

  Scenario: Taking a quiz
    Given I am on the quiz start page
    When I fill in the name entry form
    Then I should see the first quiz question
    When I answer the question
    Then i should see the second question

 
