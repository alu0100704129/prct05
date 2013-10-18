# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

	def setup
		@frac_1 = Fraccion.new(1, 2)
		@frac_2 = Fraccion.new(1, 3)
	end

	def teardown
		@frac_1.numer = 1
		@frac_1.denom = 2
		@frac_2.numer = 1
		@frac_2.denom = 3
	end

	def test_sumar
		assert_equal(Fraccion.new(5, 6).to_s, @frac_1.suma(@frac_2).to_s, "Test Suma")
	end

	def test_restar
		assert_equal(Fraccion.new(1, 6).to_s, @frac_1.resta(@frac_2).to_s, "Test Resta")
	end

	def test_producto
		assert_equal(Fraccion.new(1, 6).to_s, @frac_1.producto(@frac_2).to_s, "Test Producto")
	end

	def test_dividir
		assert_equal(Fraccion.new(3, 2).to_s, @frac_1.division(@frac_2).to_s, "Test Dividir")
	end

end
