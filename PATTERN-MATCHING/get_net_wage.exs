calculate_income_tax = fn income ->
  cond do
    income <= 2000 ->
      0

    income > 2000 && income <= 3000 ->
      income * 0.05

    income > 3000 && income <= 6000 ->
      income * 0.1

    income > 6000 ->
      income * 0.15
  end
end

input = IO.gets("Please enter your salary: \n")

case Integer.parse(input) do
  :error ->
    "#{input} is not a valid salary"

  {salary, _} ->
    {income_tax, balance} =
      {calculate_income_tax.(salary), salary - calculate_income_tax.(salary)}

    IO.puts("Income tax is #{income_tax} and remaining balance is #{balance}")
end
