class PagesController < ApplicationController
  def welcome
    @header = "This is the welcome page"
  end
  def about

  end
  def contest

  end
  def kitten
    @kitten_url = "http://lorempixel.com/#{params[:size]}/#{params[:size]}/cats"
  end
end
