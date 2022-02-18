defmodule BackendWeb.TestController do
  use BackendWeb, :controller

  action_fallback BackendWeb.FallbackController

  def test(conn, _params) do
    text(conn, "Badtrip fdasfdsafsadh")
  end

end
