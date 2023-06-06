defmodule S2.Games.Memory.MemoryTasks do

  import S2.Games.Memory.MemoryUtils

  defp selected_letters(map_alphabet)  do
    vocales = get_vowels(map_alphabet, [])
    consonants = get_consonants(map_alphabet, [])
    Enum.concat(vocales, consonants)
  end

  def init_game do
    sel_letters = selected_letters(alphabet_map())
    solucion = load_board(sel_letters, alphabet_map())
    player = IO.gets("Nickname: ") |> String.trim

  end

  defp game(board_on, solved_board, player, lifes, acc_v, acc_c) when lifes > 0 and acc_v < 3 and acc_c < 3  do

  end

  defp game(_, _, _, lifes, acc_v, acc_c) when lifes == 0, do: {:gameover, :finished}

  defp game(_, _, _, _, acc_v, acc_c), do: {:winner, score}

  defp reveal_cards(board_on, pair1, pair2) do


  end

end