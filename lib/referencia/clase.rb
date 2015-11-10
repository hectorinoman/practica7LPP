
Nodo = Struct.new(:value, :next_node, :prev_node)

class Nodo
    include Comparable
    
    def <=>(other)
		 @level <=> other.level
	end
end
    
class Lista
    include Enumerable
   

    attr_accessor :head, :value, :next_node, :tail, :prev_node, 

    def initialize
        @head = nil
        @tail = nil
    
    end
    
end