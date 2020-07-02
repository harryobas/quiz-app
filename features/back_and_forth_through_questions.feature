Feature: Go back and forth through the different questions

  In order to make changes to my answers before final submission
  As a quiz taker
  I should be able to go back and forth through the different questions while taking a quiz

  Scenario: Go to previous question 
    Given I am on a question that is not the first
    When I click back button
    Then I should see the previous quiz question
   
  Scenario: Go to next question 
    Given I am on a question page that is not the last question
    When I select an answer the question 
    And click the next button 
    Then I should see the next question
    
  Scenario: Go to next question without submiting an answer
    Given I am on a question page 
    When I click the next button without giving an answer to the question 
    Then I should see an alert message to answer the question in order to proceed



 