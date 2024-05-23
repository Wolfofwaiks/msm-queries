class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def director 
    render({ :template => "misc_templates/director"})

  end 
end
