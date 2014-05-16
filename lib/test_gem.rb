require 'json'

class FizzBuzz

	def checks(i)
		if(i % 3 == 0 && i % 5 == 0)
			"FizzBuzz"
		elsif (i % 3 == 0)
			"Fizz"
		elsif (i % 5 == 0)
			"Buzz"
		else i	
		end
	end
end

class OutPut

	def consv(ary)
		ary
	end

	def jsonv(ary)
		ary.to_json
	end

	def htmlv(ary)
		ary
	end
end

def main(num)
	num = num.to_i
	ary = Array.new
	fbzz = FizzBuzz.new
	for i in 1..num
		(ary[i-1] = fbzz.checks(i))
	end	
	out = OutPut.new
	out.jsonv(ary)	
end