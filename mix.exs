defmodule AlixirCore.MixProject do
  use Mix.Project

  @project_host "https://github.com/GreenNerd-Labs/alixir_core"
  @version "0.1.0"

  def project do
    [
      app: :alixir_core,
      version: @version,
      source_url: @project_host,
      homepage_url: @project_host,
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.2.0"},
      {:timex, "~> 3.3"},
    ]
  end
end
