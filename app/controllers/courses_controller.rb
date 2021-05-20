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
    @course = Course.new(title: "...", body: "...")

    if @course.save
      redirect_to @course
    else
      render :new
    end
  end
end
