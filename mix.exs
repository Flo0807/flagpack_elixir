defmodule Flagpack.MixProject do
  use Mix.Project

  @source_url "https://github.com/Flo0807/flagpack_elixir"

  defp description do
    """
    Provides 4x3 country flags as Phoenix.Component. Based on flagpack.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Florian Arens"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url},
      name: "flagpack"
    ]
  end

  def project do
    [
      app: :flagpack,
      version: "0.1.1",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "Flagpack",
      source_url: @source_url,
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:phoenix_live_view, "~> 0.18.3"},
      {:ex_doc, "~> 0.29.0", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      main: "Flagpack",
      source_ref: "main",
      source_url_pattern: "#{@source_url}/blob/main/%{path}#L%{line}"
    ]
  end
end
