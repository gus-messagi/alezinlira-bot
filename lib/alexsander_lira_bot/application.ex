defmodule AlexsanderLiraBot.Application do
  use Application
  use Alchemy.Cogs

  alias Alchemy.Client

  defp load_modules do
    use AlexsanderLiraBot.Commands
  end

  @impl true
  @spec start(any, any) :: {:error, any} | {:ok, pid}
  def start(_type, _args) do
    children = []

    unless Mix.env == :prod do
      Dotenv.load
      Mix.Task.run("loadconfig")
    end

    Client.start(System.get_env("BOT_TOKEN"))
    load_modules()

    Cogs.set_prefix("&")

    opts = [strategy: :one_for_one, name: AlexsanderLiraBot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
