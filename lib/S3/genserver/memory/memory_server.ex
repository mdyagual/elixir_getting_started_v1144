defmodule S3.Genserver.Memory.MemoryServer do
  import S3.Genserver.Memory.MemoryTasks
  use GenServer

  #GenServer stuff
  def init(_param) do
    IO.puts("Memory Game is starting...")
    status = init_players()
    {:ok, status}
  end


  def handle_cast(%{player: player, coord: {x,y}}, status) do
    #TO DO: Game logic to keep playing
  end

  #Main functions
  def init_players() do
    #TO DO: Ask for the players that are going to play and initialize their chances to keep playing

  end

  def start_server do
    #GenServer.start_link(S3.Genserver.Memory.MemoryServer , [])
    GenServer.start_link(__MODULE__ , [], name: MemoryServer)
  end

  def next_turn(pid, :player1) do
    ing_pair = IO.gets("Select a pair (x,y): ")
               |> String.trim
               |> String.split(",")
               |> Enum.map(&String.to_integer/1)
               |> List.to_tuple
    GenServer.cast(pid, %{player: :player1, coord: ing_pair})
  end

  def next_turn(pid, :player2) do
    ing_pair = IO.gets("Select a pair (x,y): ")
               |> String.trim
               |> String.split(",")
               |> Enum.map(&String.to_integer/1)
               |> List.to_tuple
    GenServer.cast(pid, %{player: :player2, coord: ing_pair})
  end

  defp start_game do
    init_game()
  end

end

#c("lib/S3/genserver/memory/memory_server.ex")