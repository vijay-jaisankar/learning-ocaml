let rec max l = 
	match l with
		[] -> failwith "empty list"
	|	[n] -> n 
	|	h::t -> if h > (max t) then h else (max t)



let rec rangee n1 n2 = 
	if n1 = n2 then []
	else n1 :: (range (n1+1) n2)


