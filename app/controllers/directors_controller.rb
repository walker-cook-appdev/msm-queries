class DirectorsController < ApplicationController

def index

  render({:template => "directors_template/index.html.erb"})
end

def youngest
@youngest_director = Director.all.order({:dob => :desc}).at(0)
  render({:template => "directors_template/youngest.html.erb"})
end

def eldest
  @eldest_director = Director.where.not(:dob => nil).order({:dob => :asc}).at(0)
    render({:template => "directors_template/eldest.html.erb"})
  end
  def director_details
    the_id = params.fetch("an_id")
    @the_director = Director.where({:id => the_id})

    @film_ids = Movie.where(:director_id => the_id)
      render({:template => "directors_template/director_details.html.erb"})
  end
  


end 
