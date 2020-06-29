Rails.application.routes.draw do
 get "/quiz_wizard/step1" => 'quiz_wizard#step1', as: 'quiz_wizard_step1'
 post "/quiz_wizard/validate_step" => 'quiz_wizard#validate_step', as: 'validate_step_path'

end
