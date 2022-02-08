class ActorsController < ApplicationController
  def index
    render({:template => "actors_template/index.html.erb"})
  end

  def actor_details
      the_id = params.fetch("actor_id")
      @the_actor = Actor.where({:id => the_id})
    
      @characters = Character.where(:actor_id => the_id)
        render({:template => "actors_template/actor_details.html.erb"})
  end

end