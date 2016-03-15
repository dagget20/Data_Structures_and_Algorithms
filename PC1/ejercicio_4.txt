def multiplos_3_5(numero)
	multiplos = []
	for i in 1..numero - 1
		if i % 3 == 0 or i % 5 == 0
			multiplos.push(i)
		end
	end
	return multiplos
end

def suma_arreglo_multiplos_3_5(numero)
	multiplos = multiplos_3_5(numero)
	total = 0
	for i in 0..multiplos.size-1
		total += multiplos[i]
	end
	puts "Los muliplos de 3 o 5 son " + multiplos.to_s
	puts "Suma de multiplos es " + total.to_s
end

suma_arreglo_multiplos_3_5(10)
suma_arreglo_multiplos_3_5(20)