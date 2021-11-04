defmodule LiveElementExampleWeb.PageController do
  use LiveElementExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
