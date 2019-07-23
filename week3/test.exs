defmodule Test do
  @max_words 3
  @removed_words ["a", "an", "the", "and"]
  @doc """
  Sort by frequency in descending order
  """
  def sortmap(map) do
    map
    |> Map.drop(@removed_words)
    |> Enum.sort_by(fn {_word, freq} -> freq end, &>=/2)
    |> Enum.take(@max_words)
  end
end

map = %{
  "fear" => 1,
  "journy" => 2,
  "a" => 5,
  "what" => 3,
  "know" => 2,
  "about" => 8,
  "contains" => 5,
  "did" => 3,
  "dont" => 9,
  "puncuation" => 2
}

IO.inspect(Test.sortmap(map))


## After @removed_words was implemented
# ~/w/week3 ❯❯❯ elixir test.exs                                                                  4:23PM
# [{"dont", 9}, {"about", 8}, {"contains", 5}]
