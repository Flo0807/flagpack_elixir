if File.exists?("blend/premix.exs") do
  Code.compile_file("blend/premix.exs")
end

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
      version: "0.5.2",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "Flagpack",
      source_url: @source_url,
      docs: docs()
    ]
    |> Keyword.merge(maybe_lockfile_option())
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:phoenix_live_view, ">= 0.18.0"},
      {:ex_doc, "~> 0.38.0", only: :dev, runtime: false},
      {:blend, "~> 0.5.0", only: :dev}
    ]
  end

  defp docs do
    [
      main: "Flagpack",
      source_ref: "main",
      source_url_pattern: "#{@source_url}/blob/main/%{path}#L%{line}"
    ]
  end

  defp maybe_lockfile_option do
    case System.get_env("MIX_LOCKFILE") do
      nil -> []
      "" -> []
      lockfile -> [lockfile: lockfile]
    end
  end
end
