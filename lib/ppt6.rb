class PiedraPapelTijeras

#ATRIBUTOS Y METODOS DE CLASE

	@@gana = {:piedra => :tijeras, :tijeras => :papel, :papel => :piedra}
	@@posibles = @@gana.keys

	class << self


		def get_posibles
			return @@posibles
		end


		def get_gana(j)
			return @@gana[j]
		end


	end
#-------------------------------

	def initialize
		@jugadahumano = nil
		@jugadamaquina = nil
	end


	def set_jh (j)
		@jugadahumano = j
	end


	def comprueba(j)
		raise 'INTRODUZCA UNA JUGADA VALIDA' unless @@posibles.include? j
	end


	def obtener_humano
		self.comprueba(@jugadahumano.to_sym)
		return @jugadahumano.to_sym
	end


	def obtener_maquina
		@jugadamaquina = PiedraPapelTijeras.get_posibles[rand(3)]
		return @jugadamaquina
	end


	def jugar
		jh = obtener_humano
		jm = obtener_maquina
		if jh == jm
			return "Empate"
		elsif PiedraPapelTijeras.get_gana(jh) == jm
			return "Jugador"
		else
			return "Maquina"
		end
	end


end
