class AboutController < ApplicationController
  def about
    about = About.new
    render :json => about.to_json()
  end
end
