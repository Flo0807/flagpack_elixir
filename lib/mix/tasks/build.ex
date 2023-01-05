defmodule Mix.Tasks.Build do
  # Builds a new lib/flagpack.ex based on the flags.
  @moduledoc false
  @shortdoc false
  use Mix.Task

  @target_file "lib/flagpack.ex"

  def run(_) do
    svg_path = svg_path()

    flags =
      Path.wildcard(Path.join(svg_path, "*.svg"))
      |> Enum.map(&%{func: function_name(&1), alpha: file_root_name(&1), svg: File.read!(&1)})

    Mix.Generator.copy_template(
      "assets/flagpack.exs",
      @target_file,
      %{flags: flags},
      force: true
    )

    Mix.Task.run("format")
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
  defp do_function_name(rootname), do: String.split(rootname, "-") |> Enum.join("_")

  defp svg_path, do: Path.join("assets", "flags")
end
