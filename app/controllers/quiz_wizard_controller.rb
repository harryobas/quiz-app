class QuizWizardController < ApplicationController
    before_action :load_quiz_wizard, except: %i(validate_step show)

    def validate_step
      current_step = params[:current_step]

      @quiz_wizard = wizard_quiz_for_step(current_step)
      begin
        @quiz_wizard.quiz.attributes = quiz_wizard_params_for(current_step)
      rescue StandardError => e 
        redirect_to "/quiz_wizard/#{current_step}", alert: 'You must choose an answer to proceed' and return
      end 

      session[:quiz_attributes] = @quiz_wizard.quiz.attributes

      if @quiz_wizard.valid?
        next_step = wizard_quiz_next_step(current_step)
        create and return unless next_step
        redirect_to action: next_step
      else 
        render current_step
      end 

    end

    def show 
      wizard_step = QuizWizard::Quiz::STEPS.last
      wizard = wizard_quiz_for_step(wizard_step)
      @quiz_wizard = wizard.quiz.class.find(params[:id])
    end 

    def create 
      quiz = @quiz_wizard.quiz.class.create(session[:quiz_attributes])
      if quiz 
        session[:quiz_attributes] = nil
        redirect_to quiz_wizard_path(quiz.id)
      end

    end


    private

    def load_quiz_wizard
        @quiz_wizard = wizard_quiz_for_step(action_name)
    end

    def wizard_quiz_for_step(step)
      "QuizWizard::Quiz::#{step.camelize}".constantize.new(session[:quiz_attributes])
    end

    def wizard_quiz_next_step(step)
    QuizWizard::Quiz::STEPS[QuizWizard::Quiz::STEPS.index(step) + 1]
  end

  def quiz_wizard_params_for(step)
    params.require("quiz_wizard_quiz_#{step}".to_sym).permit(:quiz_taker, :answer_one, :answer_two, :answer_three)
  end

end
