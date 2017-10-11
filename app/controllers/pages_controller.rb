class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is the welcome page"
  end
  def about

  end
  def contest
    flash[:notice] = 'No more contest'
    redirect_to welcome_path
  end
  def kitten

  end
  def kittens

  end
  def set_kitten_url
    @kitten_url = "http://lorempixel.com/#{params[:size].to_i*2}/#{params[:size]}/cats"
  end
  def secrets
    if params[:magic_word] != 'bro'
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to welcome_path
    end
  end
end
