class User 
  include Neo4j::ActiveNode
  property :name, type: String
  property :age, type: Integer
  property :mail, type: String



end
