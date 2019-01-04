defmodule TestWeb.Router do
  use TestWeb, :router
  use Plug.ErrorHandler

  defp handle_errors(conn, error) do
    super(conn, error)

    conn
    |> put_view(TestWeb.ErrorView)
    |> render("#{conn.status}.json")
  end

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :incoming_post do
    plug(:accepts, ["json"])

    plug(TestWeb.Plugs.IncomingPost)
  end

  scope "/api/", TestWeb do
    pipe_through(:incoming_post)

    post("/incoming", IncomingController, :post)
  end

  scope "/", TestWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", TestWeb do
  #   pipe_through :api
  # end
end
