class PagesController < ApplicationController
  def home 
    render({ template: "pages/home"})
  end

  
end
