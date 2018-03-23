class SchoolsController < ApplicationController
  def index
    @schools = School.all
    render 'index.html.erb'
  end
  
  def new 
    render 'new.html.erb'
  end
  
  def create
    school = School.new(name: params[:name], place: params[:place])
    school.save
    render 'create.html.erb'
  end
  
  def show
    @school = School.find_by(id: params[:id])
    render 'show.html.erb'
  end
  
  def edit
    @school = School.find_by(id: params[:id])
    render 'edit.html.erb'
  end
  
  def update
    @school = School.find_by(id: params[:id])
    @school.name = params[:name]
    @school.place = params[:place]
    @school.save
    render 'update.html.erb'
  end
  
  def destroy
    @school = School.find_by(id: params[:id])
    @school.destroy
    render 'destroy.html.erb'
  end            
end
