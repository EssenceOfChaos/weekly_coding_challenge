# Example solution for palindrome

defmodule Palindrome do
  def solution(string) do
    list_letters = String.graphemes(string)
    reversed_letters = Enum.reverse(list_letters)
    list_letters == reversed_letters
  end
end
