defmodule Challenge do
  @bread_price 0.1
  @milk_price 2
  @cake_price 15
  @tax_rate 0.12

  def get_total_spend(bread_quantity, milk_quantity, cake_quantity) do
    total_spend =
      bread_quantity * @bread_price + milk_quantity * @milk_price + cake_quantity * @cake_price

    total_spend
  end

  def apply_tax(taxable_amount) do
    tax = taxable_amount * @tax_rate
    IO.puts("Price: #{taxable_amount + tax} - Tax: #{tax} ")
  end
end
