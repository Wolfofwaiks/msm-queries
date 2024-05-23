class ActorsController < ApplicationController
  
  def actor
    render({ :template => "misc_templates/actor"})

  end 

  def show
    the_id = params.fetch("the_id")

    matching_records = Director.where({ :id => the_id })

    @the_director = matching_records.at(0)

    render({ :template => "misc_templates/showt"})
  end 

end
