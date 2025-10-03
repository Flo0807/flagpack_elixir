defmodule Mix.Tasks.Build do
  # Builds a new lib/flagpack.ex based on the flags.
  @moduledoc false
  @shortdoc false
  use Mix.Task

  alias Flagpack.Helpers

  @target_file Path.join("lib", "flagpack.ex")

  def run(_) do
    svg_path = svg_path()

    flags =
      svg_path
      |> Path.join("*.svg")
      |> Path.wildcard()
      |> Enum.map(&%{func: function_name(&1), alpha: file_root_name(&1), svg: get_svg(&1)})

    Mix.Generator.copy_template("assets/flagpack.eex", @target_file, flags: flags, force: true)

    Mix.Task.run("format")
  end

  defp get_svg(file_path) do
    file_path
    |> File.read!()
    |> Helpers.templatize_ids()
  end

  defp file_root_name(file) do
    file
    |> Path.basename()
    |> Path.rootname()
  end

  defp function_name(file) do
    file
    |> file_root_name()
    |> String.downcase()
    |> do_function_name()
  end

  defp do_function_name("and"), do: "ad"
  defp do_function_name(rootname), do: rootname |> String.split("-") |> Enum.join("_")

  defp svg_path, do: Path.join("assets", "flags")
end
