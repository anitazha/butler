defmodule Butler.Auth.ErrorHandler do
  @moduledoc """
  Placeholder moduledoc
  """

  import Plug.Conn

  def auth_error(conn, {type, _reason}, _opts) do
    body = to_string(type)
    conn
      |> put_resp_content_type("text/plain")
      |> send_resp(401, body)
  end
end
