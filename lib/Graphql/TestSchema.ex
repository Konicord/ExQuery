defmodule TestSchema do
  def schema do
    %GraphQL.Schema{
      query: %GraphQL.Type.ObjectType{
        name: "RootQueryType",
        fields: %{
          greeting: %{
            type: %GraphQL.Type.String{},
            resolve: &TestSchema.greeting/3,
            description: "Greeting",
            args: %{
              name: %{type: %GraphQL.Type.String{}, description: "Who would you like to greet?"},
            }
          }
        }
      }
    }
  end

  def greeting(_, %{name: name}, _), do: "Hello, #{name}!"
  def greeting(_, _, _), do: "Hello, world!"
end
