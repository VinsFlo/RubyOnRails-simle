class PagesController < ApplicationController
  def about
  end

  def location
  end

  def home
	@possuvideos = Possuvideo.all

  end
end
