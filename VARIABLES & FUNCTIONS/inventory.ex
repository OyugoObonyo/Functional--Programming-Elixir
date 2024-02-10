defmodule Inventory do
  import Math, only: [add: 2]
  import File, only: [write: 3]
  @total_sales 0

  def add_sale(amount) do
    @total_sales = add(@total_sales, amount)
    write("sales.txt", "#{@total_sales} \n", [:append])
    @total_sales
  end
end
