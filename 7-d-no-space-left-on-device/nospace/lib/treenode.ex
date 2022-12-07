defmodule TreeNode do
  defstruct [:value, :left, :right]

  def new(value) do
    %TreeNode{value: value}
  end

  def insert(%TreeNode{value: value} = node, value) do
    node
  end

  def insert(%TreeNode{value: value, left: left} = node, value) do
    %TreeNode{node | left: insert(left, value)}
  end

  def insert(%TreeNode{value: value, right: right} = node, value) do
    %TreeNode{node | right: insert(right, value)}
  end
end
