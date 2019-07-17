defmodule CountWords do
  @moduledoc """
  Module for counting words given some input
  """

  @top_x_words 3

  @doc """
    Count the occurance of each word. Pass Enum as 'mod' and check performance.
    Next, pass Stream as 'mod' and check performance once again.
    Note: Stream is significantly faster!
  """
  def count(path, mod) do
    File.stream!(path)
    |> mod.flat_map(&String.split/1)
    |> mod.map(&String.downcase/1)
    |> mod.map(&remove_sp_chars/1)
    |> Enum.reduce(%{}, &count_word/2)
    |> printmap()
  end

  defp remove_sp_chars(string) do
    string
    |> String.normalize(:nfd)
    |> String.replace(~r/[^A-z\s]/u, "")
  end

  defp count_word(word, map) do
    Map.update(map, word, 1, &(&1 + 1))
  end

  defp printmap(results) do
    ## max_by returns the most frequently used word
    Enum.max_by(results, fn {_word, freq} -> freq end)
  end
end

# IO.inspect(CountWords.count("assets/frankenstein.txt", Stream))
IO.inspect(CountWords.count("assets/example.txt", Stream))

# ~/w/week3 ❯❯❯ elixir count_words.exs
#
# {"you", 5}
