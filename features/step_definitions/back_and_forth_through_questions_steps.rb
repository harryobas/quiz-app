Given('I am on a question that is not the first') do
    visit quiz_wizard_step3_path
  end
  
  When('I click back button') do
    click_link "Back"
  end
  
  Then('I should see the previous quiz question') do
    expect(page).to have_content("favorite versioning tool")
  end

  Given('I on a question page that is not the last question') do
    visit quiz_wizard_step3_path
  end
  
  When('I select an answer the question') do
    choose(option: "Octocat")
  end
  
  When('click the next button') do
    click_button 'Next'
  end
  
  Then('I should see the next question') do
    expect(page).to have_content("favorite gemstone")
  end
  
  
  
