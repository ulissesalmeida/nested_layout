defmodule NestedLayoutWeb.HelpController do
  use NestedLayoutWeb, :controller

  plug :put_layout, :help
  # plug :put_layout, {NestedLayoutWeb.HelpView, "layout.html"}

  def about(conn, _params) do
    render conn, "about.html", title: "About"
  end

  def faq(conn, _params) do
    render conn, "faq.html", title: "FAQ"
  end

  def contact(conn, _params) do
    render conn, "contact.html", title: "Contact"
  end
end
