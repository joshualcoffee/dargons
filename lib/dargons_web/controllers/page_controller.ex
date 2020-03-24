defmodule DargonsWeb.PageController do
  use DargonsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
