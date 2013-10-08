=begin
	
Write a sample program in which the program will return a count of each charachter in an input string and print that in human readable words.
Note: string should not contain any characters more than three times in a string: if so then return false.

ex: input -> abaadhcvvbd
	output -> Three => 'a'
			  Two => 'b'
			  One => 'c'
			  Two => 'd'
			  One => 'h'
			  Two => 'v'

=end

module Dict

	def wordsDict()
		@words = {"1"=>"One","2"=>"Two","3"=>"Three"}
		return @words
	end

	def charsDict()
		@chars = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
		return @chars
	end
end

class Check
	include Dict

	def initialize()
		@@chars = charsDict
		@@word = wordsDict
	end

	def getString(str)
		i=0
		str_length = str.length
		str_array = []
		while i<str_length do
			str_array << str[i]
			i +=1
		end 
		@@string_array = str_array
	end

	def giveOutput()
		count_array = Hash.new
		history = Hash.new
		str_array = @@string_array
		#puts str_array
		str_array.each { |v| 
			if @@chars.include? v
				varcount = str_array.count(v)
				if varcount < 4
					concat = v+" "+varcount.to_s
					history.store(v, concat)
				else
					concat = v+" "+varcount.to_s
					count_array.store(v, concat)
				end
			else
				print "Invalid string"
			end

			}
		history.each{ |x,y| 
			y.split(" ")
			
			puts("#{@@word[y[2]]} => '#{y[0]}'")
		}

		count_array.each{|x,y| 
			y.split(" ")
			puts("#{y[0]}'s Count is invalid. it should be less than three")

		}
	end

end

obj = Check.new()

str = "aaaabccdffgh"

obj.getString(str)
obj.giveOutput

