defmodule Challenge do
  def get_spent_points(%{strength: str, dexterity: dex, intelligence: int}) do
    str * 2 + dex * 3 +
      int * 3
  end

  def calculate_income_tax(income) do
    income_tax =
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
end
