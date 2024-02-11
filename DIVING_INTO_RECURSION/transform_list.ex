defmodule TransformList do
  def square_elements([]), do: []

  def square_elements([head | rest]) do
    squared_element = head * head
    [squared_element | square_elements(rest)]
  end

  def increase_by_2([]), do: []

  def increase_by_2([head | rest]) do
    increased_value = head + 2
    [increased_value | increase_by_2(rest)]
  end

  def get_factorial(1), do: 1

  def get_factorial(n), do: n * get_factorial(n - 1)
end
