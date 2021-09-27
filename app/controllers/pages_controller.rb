class PagesController < ApplicationController
  def about
  end

  def location
  end

  def home
	@possuvideos = Possuvideo.where(public: 1);

  end
end
