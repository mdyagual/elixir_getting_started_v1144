defmodule S1.FlowControl.Case do
  def output do
    # "5\n"
    x =
      IO.gets("Insert a number: ")
      # "5"
      |> String.trim()
      # 5
      |> String.to_integer()

    # x = String.to_integer(String.trim(IO.gets("Insert a number: ")))

    case {1, 2, 3} do
      {4, 5, 6} ->
        IO.puts("It will not match")

      {1, ^x, 3} ->
        IO.puts("It matches if x == 2")

      # Default case if none will match
      _ ->
        IO.puts("None matching")
    end
  end
end
