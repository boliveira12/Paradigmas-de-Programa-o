defmodule AskName do
    def name() do
    pessoa = IO.gets("Qual seu nome?\n")

        case String.trim(pessoa) do
            "Bruno" -> 
                IO.puts("Nossa que nome mais lindo!!")
        _ ->
            IO.puts("Olá #{pessoa}")
        end
    end
end

