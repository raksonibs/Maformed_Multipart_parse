defmodule TestWeb.Plugs.IncomingPost do
  def init(opts), do: opts

  def call(conn, _params) do
    # validate incoming webhook
    conn
  end
end
