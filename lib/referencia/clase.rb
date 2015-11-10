
Nodo = Struct.new(:value, :next_node, :prev_node)

class Nodo
    include Comparable
    
    def <=>(other)
		 @level <=> other.level
	end
end
    
