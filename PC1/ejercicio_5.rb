def es_primo(numero)
	contador = 0
	primo = true
	for i in 1..numero
		if numero % i == 0
			contador += 1
		end
	end
	if contador > 2
		primo = false
	end
	return primo
end

#Pruebas primo
# puts es_primo(4)
# puts es_primo(7)
# puts es_primo(8)
# puts es_primo(11)

def factores(numero)
	factores = []
	inicial = 2

	while numero > 1
		if numero % inicial == 0 
			factores.push(inicial)
			numero = numero / inicial
		else
			inicial += 1
		end
	end
	return factores
end

def factores_primos(numero)
	factores_general = factores(numero)
	factores_pri = []
	for i in 0..factores_general.size-1
		if es_primo(factores_general[i])
			factores_pri.push(factores_general[i])
		end
	end
	puts "Los factores primos de " + numero.to_s + " son " + factores_pri.to_s
end


factores_primos(12)
factores_primos(13195)

