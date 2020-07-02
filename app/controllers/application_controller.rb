class ApplicationController < ActionController::Base

    helper_method :show_message 

    def show_message(msg_type, msg, options={})
    if options[:now]
      flash.now[msg_type] = msg
    else
      flash[msg_type] = msg
    end
    if options[:object]
      options[:object].render(options[:action]) if options[:action]
      options[:object].redirect_to(options[:path]) if options[:path]
    end 
  end



end
