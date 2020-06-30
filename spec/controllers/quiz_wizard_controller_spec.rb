require 'rails_helper'

RSpec.describe QuizWizardController, type: :controller do

  describe 'POST #validate_step' do
    context 'step is valid' do
      it 're-directs to the next step' do
        post :validate_step, params: {current_step: 'step1', quiz_wizard_quiz_step1: {"quiz_taker"=>"foo"} }
        expect(response).to redirect_to quiz_wizard_step2_path
      end
    end
  end


end
