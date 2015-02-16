class GraphQL::Introspection::TypeCall < GraphQL::RootCall
  returns :type
  arguments({
    name: "type_name",
    type: :string,
    })
  def execute!(type_name)
    GraphQL::SCHEMA.get_node(type_name)
  end
end