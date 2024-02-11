defmodule Default do
  def print_value(default_value \\ "value") do
    IO.puts(default_value)
  end
end
