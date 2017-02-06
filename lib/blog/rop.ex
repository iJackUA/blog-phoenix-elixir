defmodule ROP do
  @moduledoc """
   http://www.zohaib.me/railway-programming-pattern-in-elixir/

   ## Examples
   request
   >>> validate_request
   >>> (map get_user)
   >>> (tee update_db_from_request)
   >>> (try_catch send_email)
   >>> return_http_message

   """

  defmacro try_catch(args, func) do
    quote do
      (fn ->
        try do
          unquote(args) |> unquote(func)
        rescue
          e -> {:error, e}
        end
      end).()
    end
  end

  # defmacro tee(args, func) do
  #   quote do
  #     (fn ->
  #       unquote(args) |> unquote(func)
  #       {:ok, unquote(args)}
  #     end).()
  #   end
  # end

  defmacro tee(args, func) do
  quote bind_quoted: [args: args, func: func] do
    (fn ->
      args |> func
      {:ok, args}
    end).()
  end
  end

  defmacro bind(args, func) do
    quote do
      (fn ->
        result = unquote(args) |> unquote(func)
        {:ok, result}
      end).()
    end
  end

  defmacro left >>> right do
    quote do
      (fn ->
        case unquote(left) do
          {:ok, x} -> x |> unquote(right)
          {:error, _} = expr -> expr
        end
      end).()
    end
  end

end
