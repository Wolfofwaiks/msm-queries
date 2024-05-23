class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def director 
    render({ :template => "misc_templates/director"})

  end 

  def show 
    the_id = params.fetch("the_id")

    matching_records = Director.where({ :id => the_id })

    @the_director = matching_records.at(0)

    render({ :template => "misc_templates/show"})
  end 

end
