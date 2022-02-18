defmodule BackendClient do

  # use Tesla
  # plug Tesla.Middleware.BaseUrl,
  # plug Tesla.Middleware.Headers,
  # plug Tesla.Middleware.JSON

  # def test() do
  #   Tesla.get(client(), "/api/test")|> IO.inspect()
  #   # result = Tesla.get(client("asdf")|>IO.inspect(), "/api/test")
  #   # IO.inspect("fsdafdsajjg")
  #   # IO.inspect(result)
  # end

  def signup(client) do
    Tesla.post(client, "/users" <> "/signup")
  end

  def client(token) do

    middlewares = [
      {Tesla.Middleware.BaseUrl, "http://backend:4000"},
      Tesla.Middleware.JSON,
      {Tesla.Middleware.Headers, [{"authorization", "token: " <> token }]}
    ]

    Tesla.client(middlewares)
  end


end
