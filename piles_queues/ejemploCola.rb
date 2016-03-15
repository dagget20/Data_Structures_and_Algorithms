
def insertarCola(valor)
	if $last < $tamano
		$last = $last+1
		$cola[$last]=valor
		if $first == -1
			$first=0
		end
	end
end
def muestraArreglo()
	for i in $first..$last
		puts $cola[i]
	end
end
def eliminaElemento()
	valor=0
	if $first>-1
		valor=$cola[$first]
		$first= $first+1
		if $first>$last
			$first=-1
			$last=-1
		end
	end
	return (valor)
end
$cola=[]
$last=-1
$first=-1
$tamano=10
insertarCola(10)
insertarCola(20)
insertarCola(30)
insertarCola(40)
muestraArreglo
eliminaElemento
eliminaElemento
muestraArreglo