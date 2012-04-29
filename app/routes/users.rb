class Users < Sinatra::Base

  get "/?:name?" do
    user      = User.new
    user.name = params[:name] if params[:name]

    "I am #{user.name}"
  end

end