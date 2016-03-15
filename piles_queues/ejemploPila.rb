def insertar_pila(valor)
	if $tope < $tamano - 1
		$tope += 1
		$pila[$tope] = valor
	end
end

def eliminar_pila
	valor = 0
	if $tope > -1
		valor = $pila[$tope]
		$tope -= 1
	end
	return valor
end

def mostrar_pila
	contardor = $tope
	# for i in 0..$tope
	# 	puts $pila[i]
	# end
	while contardor >= 0
		puts $pila[contardor]
		contardor -=1
	end
end

$pila=[]
$tope=-1
$tamano=10

insertar_pila(10)
insertar_pila(20)
insertar_pila(30)
insertar_pila(40)

mostrar_pila

eliminar_pila
eliminar_pila

mostrar_pila
