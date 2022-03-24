defmodule AlexsanderLiraBot.MixProject do
  use Mix.Project

  def project do
    [
      app: :alexsander_lira_bot,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {AlexsanderLiraBot.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:alchemy, "~> 0.7.0", hex: :discord_alchemy},
      {:dotenv, "~> 3.0.0"}
    ]
  end
end
