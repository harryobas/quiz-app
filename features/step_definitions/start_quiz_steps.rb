When('I visit the quiz start page') do
    visit quiz_wizard_start_path
  end
  
  Then('I should see a name entry notice') do
    expect(page).to have_content("Enter your name")
  end
  