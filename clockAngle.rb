class Angle
	def getKeys(str)
		@@keys = str.split(":")
		@@hour = @@keys[0].to_i
		@@minute = @@keys[1].to_i

		if @hour!=0 && @minute!=0
			return true
		else
			return false
		end
	end

	def getAngle()
		h = @@hour
		m = @@minute
		converted_m = h * 60
		h_angle = (h *30) + ((m*30)/60)
		m_angle = m * 6
		angle = h_angle + m_angle
		puts "#{angle}"
	end	
end

ang = Angle.new()
ang.getKeys("4:15")
ang.getAngle


# module SayHello
	
# 	private;
# 	def hello()
# 		puts "Hello"
# 	end
# end

# class HelloWorld
# 	public;
# 	def hello()
# 		puts "World"
# 	end
# end

# class HelloWorlds < HelloWorld

# 	include SayHello

# end

# obj = HelloWorlds.new
# obj.hello
