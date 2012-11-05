require 'ppt6'

prueba = PiedraPapelTijeras.new

puts 'Introduzca una jugada'
jugada = gets.chomp

prueba.set_jh(jugada)
puts prueba.jugar

