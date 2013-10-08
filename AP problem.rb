=begin

Dynamic Programming (Longest Arithmetic Progression)

Given a set of numbers, find the Length of the Longest Arithmetic Progression (LLAP) in it.

Examples:

set[] = {1, 7, 10, 15, 27, 29}
output = 3
The longest arithmetic progression is {1, 15, 29}

set[] = {5, 10, 15, 20, 25, 30}
output = 6
The whole set is in AP

Note: number should be seperated by ',' in a string and it should be sorted before processing a numeric array.

=end

class Ap

	def to_array(str)
		@str = str
		@str_array = @str.split(",")
		@str_array.sort
		@str_array_numeric = []
		@str_array.each{ |x| x.to_i; @str_array_numeric << x }
		@out = self.calculateAp(@str_array_numeric)
		@set = self.set(@out, @str_array_numeric)
		if @set.length > 1
			puts "The Arithmetic Progression numbers are #{@set} and the length is #{@set.length}"
		else
			puts "There are no Arithmetic Progression numbers!"
		end
				
		# puts "#{@str_array_numeric}"
	end

	def calculateAp(array)
		@str_array = array
		@arr_hash = Hash.new
		@str_array.each_with_index{ |x,y|; @f = y+1 ; @from = @str_array[@f].to_i; @dif = @from - x.to_i; @arr_hash.store(@from, @dif) }
		return @arr_hash
	end

	def set(hash, str_array)
		@set_hash = hash
		@str_array = str_array
		@new_str_array = []
		@new_set = []
		@set_hash.each{ |x,y| @new_str_array << y; }	
		@new_str_array.each{|x| count =@new_str_array.count(x); if count ==2; @value = x; end; }
		@new_set << @str_array[0].to_i
		@set_hash.each{|x,y| if y==@value ; @new_set << x; end;}
		return @new_set
	end

end

obj = Ap.new
# input_string = "1,3,4,9,15,46,100" // for no arithmetic progression
input_string = "2,5,8,15,24,35,47,55"
obj.to_array(input_string)