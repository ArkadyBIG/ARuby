puts 'a:'
$a = gets.chomp.to_f
puts 'b:'
$b = gets.chomp.to_f
puts 'c:'
$c = gets.chomp.to_f
puts 'x start:'
x_start = gets.chomp.to_f

puts 'x end:'
x_end = gets.chomp.to_f

puts 'x step:'
x_step = gets.chomp.to_f


is_integer = (($a.to_i ^ $b.to_i) and !($a.to_i or $c.to_i)) == false
puts is_integer

def func x
	if $c < 0 and $a != 0
		return - $a * x * x
	end
	if $c > 0 and $a == 0
		return ($a - x) / $c / x
	end
	return x / $c
end

x_cur = x_start
while x_cur < x_end
	result = func x_cur
	if is_integer
		result = result.to_i
	end
	puts 'X:' + x_cur.to_s  + ' res: ' + result.to_s
	x_cur += x_step
end




