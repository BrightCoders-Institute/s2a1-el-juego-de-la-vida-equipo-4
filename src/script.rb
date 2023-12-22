
require "./cell.rb"
require "./board.rb"
require "./gameOfLife.rb"

puts "Ingrese el número de filas y columnas para la matriz:"
dim = gets.chomp.to_i
puts "Ingrese el número de generaciones:"
gen = gets.chomp.to_i

game = GameOfLife.new(dim, dim)
game.generations(gen)


