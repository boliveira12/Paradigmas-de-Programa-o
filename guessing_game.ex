defmodule GuessingGame do
  def guess(a, b) when a > b, do: guess(b, a)

  def guess(low, high) do
    answer = IO.gets("O que voce estava pensando é #{mid(low, high)}?\n")

    case String.trim(answer) do
      "Maior" ->
        bigger(low, high)

      "Menor" ->
        smaller(low, high)

      "Sim" ->
        "Eu adivinhei o numero correto!"

      _ ->
        IO.puts(~s{Type "Maior", "Menor" or "Sim"})
        guess(low, high)
    end
  end

  def mid(low, high) do
    div(low + high, 2)
  end

  def bigger(low, high) do
    new_low = min(high, mid(low, high) + 1)
    guess(new_low, high)
  end

  def smaller(low, high) do
    new_high = max(low, mid(low, high) - 1)
    guess(low, new_high)
  end
end