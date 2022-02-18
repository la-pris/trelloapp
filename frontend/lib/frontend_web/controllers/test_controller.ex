defmodule FrontendWeb.TestController do
  use FrontendWeb, :controller

  alias BackendClient

  def test(conn, _params) do
    # Tesla.get("http://localhost:4001/api/")
    BackendClient.test()
    text(conn, "Hello World")
  end

  def signup(conn, _params) do

    BackendClient.signup()
    text(conn, "Hello World")
  end

end
