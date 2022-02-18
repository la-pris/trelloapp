defmodule FrontendWeb.BoardLive do
  use Phoenix.LiveView

  @success_codes 200..399

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :lists, Tesla.get("/api/lists") )}
  end

  def all_lists(params) do
    url = "/api/lists"
    # {access_token, params} = Map.pop(params, "access_token")


  end


  def client(access_token) do

    middlewares = [
      {Tesla.Middleware.BaseUrl, "http://backend:4000"},
      Tesla.Middleware.JSON,
      {Tesla.Middleware.Headers, [{"Authorization", "Bearer #{access_token}"}]}
    ]

    Tesla.client(middlewares)
  end

end
