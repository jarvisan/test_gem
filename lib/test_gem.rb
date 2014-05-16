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

	def plainv(ary)
		ary.join(", ")
	end

	def jsonv(ary)
		ary.to_json
	end

	def htmlv(ary)
		<<-EOF
			#{ary.map { |d| "<li>#{d}</li>"}.join("\n\t")}
			</body>
		</html>
		EOF
	end
end

def main(num, type)
	num = num.to_i
	ary = Array.new
	fbzz = FizzBuzz.new
	for i in 1..num
		(ary[i-1] = fbzz.checks(i))
	end	

	out = OutPut.new

	if(type == "html")
		out.htmlv(ary)
	elsif(type === "json")
		out.jsonv(ary)
	else out.plainv(ary)
	end	
end
