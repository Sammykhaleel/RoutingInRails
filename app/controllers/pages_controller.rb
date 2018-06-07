class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  end

  def something
  	@value = params[:value]
  	@another_value = params[:another_value]
  end
end
