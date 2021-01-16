class InformationController < ApplicationController
  def new 
      @info=Information.new
  end    
end
