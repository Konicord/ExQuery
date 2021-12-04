# Exquery - Boilerplate

* Simple GraphQL Mix Boilerplate

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `exquery` to your list of dependencies in `mix.exs`:

```elixir
# Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :graphql]
    ]
  end

# Dependencies for installation of the package(s)
def deps do
  [
    {:exquery, "~> 0.1.0"}
  ]
end
```

# Our first Query

```diff
iex -S mix
iex> GraphQL.execute(TestSchema.schema, "{greeting}")
Output: {:ok, %{greeting: "Hello, world!"}}
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/exquery](https://hexdocs.pm/exquery).

