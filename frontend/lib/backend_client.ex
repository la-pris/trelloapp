defmodule BackendClient do

  use Tesla
  plug Tesla.Middleware.BaseUrl, "https://"
  plug Tesla.Middleware.Headers,
  plug Tesla.Middleware.JSON


  def login(client, login) do

  end

  def client(access_token) do

    middlewares = [
      {Tesla.Middleware.BaseUrl, url},
      Tesla.Middleware.JSON
    ]
  end


end
