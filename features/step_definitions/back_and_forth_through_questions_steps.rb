Given('I am on a question that is not the first') do
    visit quiz_wizard_step3_path
  end
  
  When('I click back button') do
    click_link "Back"
  end
  
  Then('I should see the previous quiz question') do
    expect(page).to have_content("favorite versioning tool")
  end
  
  
