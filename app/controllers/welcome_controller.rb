class WelcomeController < ApplicationController
  protect_from_forgery :except => :index 

  def index
    #render :text => params

    @select = params[:select]
    @parameterone = params[:parameterone].to_i
    @parametertwo= params[:parametertwo].to_i

    if @select == "+" 

      @result = @parameterone + @parametertwo

    elsif @select == "-" 

      @result = @parameterone - @parametertwo

    elsif @select == "*" 

      @result = @parameterone * @parametertwo

    elsif @select == "/" 

      @result = @parameterone / @parametertwo

    end

    @result

  end

end
