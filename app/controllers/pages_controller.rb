class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is the welcome page"
  end
  def about

  end
  def contest
    flash[:notice] = 'No more contest'
    redirect_to '/welcome'
  end
  def kitten

  end
  def kittens

  end
  def set_kitten_url
    @kitten_url = "http://lorempixel.com/#{params[:size]}/#{params[:size]}/cats"
  end
end
