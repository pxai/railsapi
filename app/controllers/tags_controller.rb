class TagsController < ApplicationController
  def index
    render jsonapi: Tag.all
  end

  def show
    render jsonapi: Tag.find(params[:id])
  end

  def new
    tag = Tag.new
  end

  def create
    tag = Tag.new(name: params[:name], description: params[:description])

    if tag.save
      render jsonapi: post
    else
      render jsonapi_errors: post.errors
    end
  end

  def update
    tag = Tag.find(params[:id])
    tag.name = params[:name]
    tag.description = params[:description]

    if tag.save
      render jsonapi: tag
    else
      render jsonapi_errors: tag.errors
    end
  end

  def destroy
    tag = Tag.find(params[:id])

    if tag.delete
      render jsonapi: tag
    else
      render jsonapi_errors: tag.errors
    end
  end
end
