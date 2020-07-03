Rails.application.routes.draw do
 get "/quiz_wizard/step1" => 'quiz_wizard#step1', as: 'quiz_wizard_step1'
 get "/quiz_wizard/step2" => 'quiz_wizard#step2', as: 'quiz_wizard_step2'
 get "/quiz_wizard/step3" => 'quiz_wizard#step3', as: 'quiz_wizard_step3'
 get "/quiz_wizard/step4" => 'quiz_wizard#step4', as: 'quiz_wizard_step4'

 resources :quiz_wizard, only: [:show, :create] 

 root to: "quiz_wizard#step1"

 post "/quiz_wizard/validate_step" => 'quiz_wizard#validate_step', as: 'quiz_wizard_validate_step'


end
