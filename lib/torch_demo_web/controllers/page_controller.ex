defmodule TorchDemoWeb.PageController do
  use TorchDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
