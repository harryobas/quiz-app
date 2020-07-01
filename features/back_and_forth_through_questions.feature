Feature: Go back and forth through the different questions

  In order to make changes to my answers before final submission
  As a quiz taker
  I should be able to go back and forth through the different questions while taking a quiz

  Scenario: Go to previous question 
    Given I am on a question that is not the first
    When I click back button
    Then I should see the previous quiz question
   
  Scenario: Go to next question 
    Given I on a question page that is not the last question
    When I answer the question 
    And click the next button 
    Then I should see the next question
