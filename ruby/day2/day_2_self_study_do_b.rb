# The Tree class was interesting, but it did not allow you to specify a new
# tree with a clean user interface. Let the initializer accept a nested
# structure of hashes. You should be able to specify a tree like this:
# {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {},
# 'child 4' => {} } } }.

class Tree
  attr_accessor :children, :node_name

  def initialize(map)
    @children = []
    @node_name = map.keys[0] # assume well-formed input

    map.each_value do |children_map|
      children_map.each do |parent, grandchildren_map|
        children.append(Tree.new({parent => grandchildren_map}))
      end
    end
  end

  def has_children?
    @children.size > 0
  end

  def visit_all(indent=0, &block)
    visit(indent, &block)
    indent += 1
    children.each {|c| c.visit_all(indent, &block) }
  end

  def visit(indent, &block)
    yield self, indent
  end
end

ruby_tree = Tree.new(
{'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {},
'child 4' => {} } } }
)

ruby_tree.visit_all() {|n, idt| puts "#{" " * idt}#{n.node_name}"}

