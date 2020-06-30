Given('I am on the quiz start page') do
  visit quiz_wizard_step1_path
end

When('I fill in the name entry form') do
  fill_in "quiz_wizard_quiz_step1[quiz_taker]", with: "Foo", disabled: false
  click_button "Continue"
end

Then('I should see the first quiz question') do
    expect(page).to have_content("What is your favorite versioning tool?")
end

When('I answer the question') do
  choose(option: 'SVN')
  click_button "Next"
end

Then('i should see the second question') do
  expect(page).to have_content("favorite cat")
end
