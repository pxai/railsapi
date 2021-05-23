class AboutController < ApplicationController
  respond_to :json
  def about
    about = About.new
    render :json => about.to_json()
  end
end
