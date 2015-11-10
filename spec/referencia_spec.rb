require 'spec_helper'
require 'referencia'

describe Referencia do
    before :all do 
        @referencia1 = Bibliografia.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide", "The Facets of Ruby", "Pragmatic Bookshelf", "4 edition", "July 7, 2013",["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @referencia2 = Bibliografia.new(["Scott Chacon"], "Pro Git 2009th Edition", "Pro", "Apress", "2009 edition", "August 27, 2009", ["ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
        @referencia3 = Bibliografia.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "Serie", "O’Reilly Media", " 1 edition", "February 4, 2008", ["ISBN-10: 0596516177", "ISBN-13: 978-0596516178"])
        @referencia4 = Bibliografia.new(["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "The Facets of Ruby", "Pragmatic Bookshelf", "1 edition", "December 25, 2010", ["ISBN-10: 1934356379", "ISBN-13: 978-1934356371",])
        @referencia5 = Bibliografia.new(["Richard E. Silverman"], "Git Pocket Guide", "Serie", "O’Reilly Media", "1 edition",  "August 2, 2013", ["ISBN-10: 1449325866", "ISBN-13: 978-1449325862"])    
        
        @nodo1  = Nodo.new(@referencia1)
        @nodo2 = Nodo.new(@referencia2)
        @nodo3 = Nodo.new(@referencia3)
        @nodo4 = Nodo.new(@referencia4)
        @nodo5 = Nodo.new(@referencia5)
        
        @lista = Lista.new(0)
    end  
    
    context "Node" do
        it "Debe existir un Nodo de la lista con sus datos y su siguiente" do
            expect(@nodo1.value).to eq(@referencia1)
            expect(@nodo1.next).to eq(nil)
        end
    end
    
    context "List" do
        it "Se extrae el primer elemento de la lista" do
            @lista.push(@nodo5)
            @lista.push(@nodo4)
            @lista.ext
            expect(@lista.first).to eq(@nodo5)
        end
        
        it "Se puede insertar un elemento" do
            @lista.push(@nodo4)
            expect(@lista.first).to eq(@nodo4)
        end
        
        it "Se pueden insertar varios elementos" do
            @lista.push(@nodo5)
            @lista.push(@nodo4)
            @lista.push(@nodo3)
            expect(@lista.first).to eq(@nodo3)
            @lista.ext
            expect(@lista.first).to eq(@nodo4)
            @lista.ext
            expect(@lista.first).to eq(@nodo5)
        end
        
        it "Debe existir una lista con su cabeza" do
            @lista.push(@nodo1)
            expect(@lista.first).to eq(@nodo1)
        end
    end
    
    

end
