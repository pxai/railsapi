class About
  def to_json
    response = {:name => "railsapi", :year => "2021"}
    response.to_json
  end
end
