defmodule AlexsanderLiraBot.Commands do
  use Alchemy.Cogs
  import Alchemy.Embed
  alias Alchemy.Embed

  Cogs.def tiltar do
    Cogs.say("AAAAAAAAAAAAA QUE DESGRAAAAAAAAAAAÇA!!!!")
  end

  Cogs.def mano do
    Cogs.say("Ô, mano!")
  end

  Cogs.def boa(phrase) do
    Cogs.say("Ô, boa #{phrase} lá, mano!")
  end

  Cogs.def help do
    %Embed{}
    |> title("Information for Alezinlira Bot")
    |> thumbnail("https://raw.githubusercontent.com/Hazmi35/jukebox/main/.github/images/question_mark.png")
    |> color(0xADD8E6)
    |> field("Commands", "
    `&mano` says 'Ô, mano!'
    `&tiltar` says 'AAAAAAAAAAAAA QUE DESGRAAAAAAAAAAAÇA!!!!'
    `&boa <<parameter>>` says 'Ô, boa <<parameter>> lá, mano!
    ")
    |> Embed.send()
  end
end
