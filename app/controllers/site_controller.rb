class SiteController < ApplicationController
  def welcome
    @game = Game.new
  end

  def success
    
  end
end
