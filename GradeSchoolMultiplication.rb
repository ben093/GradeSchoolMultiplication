problemNumber = 1
f = File.open("multiply.in", "r")
f.each_line do |line|
	
	numbers = line.split #split on white space
	
	if numbers[0] == "0" && numbers[1] == "0" then
		break #end of input, program done
	end
	
	puts("Problem #{problemNumber}") #print problem number
	
	number1 = numbers[0].to_i #convert to integer
	number2 = numbers[1].to_i
	
	ans = number1 * number2
	
	n = Math.log10(ans).to_i + 1 #get length of answer
	
	num1StringFmt = number1.to_s.rjust(n)
	num2StringFmt = number2.to_s.rjust(n)
	
	#print formatted strings
	puts num1StringFmt
	puts num2StringFmt 
	
	puts "-" * n #dashes
	
	lines = 0
	zeros = 0
	len = n
	while number2 > 0
		digit = number2 % 10
		if digit == 0 then
			zeros += 1
		else
			print (number1*digit).to_s.rjust(len) 
			print '0' * zeros #fill in zeros
			puts #print blank line
			zeros = 0
			lines += 1
		end
		len -= 1
		number2 = number2 / 10 #divide by 10
	end
	
	if lines > 1 then
		puts '-' * n #print the separator
		puts ans
	end
	
	problemNumber += 1 #iterate
end