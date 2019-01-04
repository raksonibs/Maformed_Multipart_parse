defmodule TestWeb.IncomingController do
  use TestWeb, :controller

  action_fallback(TestWeb.FallbackController)

  def post(conn, _params) do
    conn
    |> json(%{})
  end
end
