class ActorsController < ApplicationController
  def index
    render({template: "actor_templates/list"})
  end

  def show
    #fetch movie records
    a_id = params.fetch("a_id")
    records = Actor.where({id: a_id})
    @actor_records = records.at(0)

    render({template: "actor_templates/details"})


  end
end
