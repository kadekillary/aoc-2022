defmodule Nospace do
  @moduledoc """
  Documentation for `Nospace`.
  """

  @doc """
  Reads the `input.txt` file and converts the data
  into a format that is conducive to solving the problem.

  Specifically, it tokenizes the input so that it is
  easy to split the string and get the necessary data
  for building the tree.

  Returns `List[strings]`.
  """
  def read_and_fmt(file) do
    file
    |> File.read!()
    |> String.replace("\n", " ", global: true)
    |> String.split(~r{.*?(?=\$|dir|(?<![#\d])\d+|$)}, include_captures: true)
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.replace(&1, "$ ", ""))
    |> Enum.filter(&(String.length(&1) > 0))
  end
end
