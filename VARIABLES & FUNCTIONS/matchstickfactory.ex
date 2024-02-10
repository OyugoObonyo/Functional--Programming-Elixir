defmodule MatchStickFactory do
  @big_capacity 50
  @medium_capacity 20
  @small_capacity 5

  def boxes(match_sticks) do
    big_boxes = div(match_sticks, @big_capacity)
    remaining = rem(match_sticks, @big_capacity)

    medium_boxes = div(remaining, @medium_capacity)
    remaining = rem(remaining, @medium_capacity)

    small_boxes = div(remaining, @small_capacity)
    remaining = rem(remaining, @small_capacity)

    %{
      big: big_boxes,
      medium: medium_boxes,
      small: small_boxes,
      rem: remaining
    }
  end
end
