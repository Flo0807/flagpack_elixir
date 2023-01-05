# Flagpack

[![CI](https://github.com/Flo0807/flagpack_elixir/actions/workflows/ci.yml/badge.svg)](https://github.com/Flo0807/flagpack_elixir/actions/workflows/ci.yml)
[![Hex](https://img.shields.io/hexpm/v/flagpack.svg)](https://hex.pm/packages/flagpack)
[![Hex Docs](https://img.shields.io/badge/hex-docs-green)](https://hexdocs.pm/flagpack/Flagpack.html)

Flagpack provides 4x3 country flags as `Phoenix.Component`. Based on [flagpack.xyz](https://flagpack.xyz/).

The generation of the flags is inspired by [heroicons_elixir](https://github.com/mveytsman/heroicons_elixir).

## Installation

The package can be installed by adding `flagpack` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:flagpack, "~> 0.1.0"}
  ]
end
```

## Usage

Each component accepts an optional class attribute in order to be able to add extra classes to the component.

```eex
<Flagpack.usa />
<Flagpack.usa class="w-5 h-5" />
```

You may use the `Flagpack.flag/1` function and pass a flag name. This can be useful when you want to generate the flag name dynamically.

```eex
<Flagpack.flag name={:usa}/>
<Flagpack.flag name={:usa} class="w-5 h-5" />
```

For additional information and list of all flags see [the docs](https://hexdocs.pm/flagpack/Flagpack.html).

## Naming

The name of a function for a flag is the country's three letter code (ISO 3166-1 alpha-3) in lowercase. You may search for flags here https://flagpack.xyz/docs/flag-index/.

For Andorra we use the country's two letter code (ISO 3166-1 alpha-2) `ad`, because we are not able to name the function `and`.
