defmodule ScrivenerHtml.Mixfile do
  use Mix.Project

  def project do
    [app: :scrivener_html,
     version: "0.0.1",
     elixir: "~> 1.0.0",
     elixirc_paths: elixirc_paths(Mix.env),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "HTML helpers for Scrivener",
     docs: [
       main: Scrivener.HTML,
       readme: "README.md"
     ],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:scrivener, "~> 0.13.0"},
      {:phoenix_html, "~> 1.2.0"},
      {:phoenix, "~> 0.16.0", optional: true},
      {:pavlov, "~> 0.2.3", only: :test}
    ]
  end
end
