# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"



class Fraccion
	

	def initialize(numer, denom)
		#raise TypeError, "El denominador debe ser mayor que cero" unless (denom != 0)		
		@numer = numer
		@denom = denom
	end

	attr_accessor :numer, :denom
	
	
	def mcm(u, v)
		u, v = u.abs, v.abs
		valor = gcd(u, v)
		u * v / valor
	end
	
	def to_s
		"#{@numer}/#{@denom}"
	end

	def suma(value)
		sum = Fraccion.new(0,0)
		# Si ambos son de igual denominador
		if @denom == value.denom
			sum.numer = (@numer + value.numer)
			sum.denom = @denom        
		else
			sum.denom = mcm(@denom, value.denom)                
			sum.numer = ((@numer * sum.denom)/@denom) + ((value.numer * sum.denom)/value.denom)  
		end
        	return sum        
	end

	def resta(value)
		res = Fraccion.new(0, 0)
		# Si ambos son de igual denominador
		if @denom == value.denom    
			res.numer = @numer - value.numer                
			res.denom = @denom        
		else
			res.denom = mcm(@denom, value.denom)
			res.numer = ((@numer * res.denom)/@denom) - ((value.numer * res.denom)/value.denom)  
		end
        	return res
	end

	def producto(value)
		prod = Fraccion.new(0, 0)
		prod.numer = @numer * value.numer
		prod.denom = @denom * value.denom
        	return prod                        
	end        
	
	# Para hacer la division le damos la vuelta a la fraccion 
	# que se nos pasa por parametro y la multiplicamos
	def division(value) 
		div = Fraccion.new(0, 0)
		aux = value.numer
		value.numer = value.denom
		value.denom = aux
		div.numer = @numer * value.numer
		div.denom = @denom * value.denom        
        	return div        
	end

end


