require "app/routes/users"
require "app/models/user"

class Application < Sinatra::Base

  get "/" do
    "Root"
  end

end