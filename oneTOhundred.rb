class One

	@@arr = []
	def initialize()
		i=0;
		for i in 1..100 do
			j = i.to_s
			if j.length == 2
				rev = j.reverse!
				j.to_i
				rev.to_i
				jvalue = Math.sqrt(j.to_f)**2
				reverseValue = Math.sqrt(rev.to_f)**2
				revs = reverseValue.to_s
				revs.reverse
				revs.to_i
				print "#{revs}"
				@check = self.check(jvalue,revs)
				#print "#{@check}"
				if @check == true
					@@arr.push(j);
				end
			end
		end
	end

	def check(jvalue,revValue)
		@jvalue = jvalue
		@revValue = revValue
		if @jvalue == revValue
			return true
		else
			return false
		end
	end

	def showNumbers()
		@@arr.each{ |i| puts "#{i}"}
	end
end

obj= One.new
obj.showNumbers()
