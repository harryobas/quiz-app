Rails.application.routes.draw do
 get "/quiz_wizard/step1" => 'quiz_wizard#step1', as: 'quiz_wizard_step1'
 get "/quiz_wizard/step2" => 'quiz_wizard#step2', as: 'quiz_wizard_step2'
 get "/quiz_wizard/step3" => 'quiz_wizard#step3', as: 'quiz_wizard_step3'
 post "/quiz_wizard/validate_step" => 'quiz_wizard#validate_step', as: 'quiz_wizard_validate_step'

end
