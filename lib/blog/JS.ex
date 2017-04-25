defmodule JS do
  @assigns_key "js_global_vars"

  def put(conn, key, value) do
    js_vars = conn.assigns[@assigns_key] || %{}
    put_in(js_vars[key], %{name: "AAA", title: "BBBB"})
    Plug.Conn.assign(conn, @assigns_key, js_vars)
  end

  def print_global_js_variables(conn) do
    Poison.encode!(conn.assigns[@assigns_key])
  end
end
