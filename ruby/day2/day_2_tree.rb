# classes are CamelCase
class Tree
  # instance variables are snake_case
  attr_accessor :children, :node_name

  # ways to define instance variables:
  # attr: an instance variable and a method of the same name
  # attr_accessor: an instance variable plus an accessor and a setter

  def initialize(name, children=[])
    # @ accesses instance variables
    # @@ accesses class (static) variables
    @children = children
    @node_name = name
  end

  # testing functions/methods typically end in ?
  def has_children?
    @children.size > 0
  end

  # instance methods are snake case
  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new("Ruby",
  [Tree.new("Reia"), Tree.new("MacRuby")]
)

puts "visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
puts

puts "does the root have children?"
puts "yes" if ruby_tree.has_children?
puts "no" if !ruby_tree.has_children?
