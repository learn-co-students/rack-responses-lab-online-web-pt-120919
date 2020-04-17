class Application
  def call(env)
    response = Rack::Response.new

    if Time.now.hour > 12
      response.write "Good Afternoon!"
    else
      response.write "Good Morning!"
    end
    response.finish
  end 
end
