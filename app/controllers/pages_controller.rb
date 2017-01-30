class PagesController < ApplicationController



  def welcome
    @header = "This is the welcome page"

  end

  def about
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended."
    redirect_to welcome_path

  end

  def kitten
    set_kitten_url
  end

  def kittens
    set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "https://unsplash.it/#{requested_size}"
  end

  def secrets
    if params[:magic_word] != "elanore"
      flash[:alert] = "Sorry, you're not authorized to see this page"
      redirect_to root_url 
    end
  end

end
