class CoursesController < ApplicationController
  def index
    render :json => Course.all
  end

  def show
    render :json => Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(title: params[:title], description: params[:description], published: params[:published])

    if @course.save
      render :json => @course
    else
      render :json => {:error => true, :msg => "Error creating Course"}.to_json
    end
  end
end
