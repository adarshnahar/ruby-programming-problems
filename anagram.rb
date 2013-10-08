=begin

Two words are anagrams if and only if they contain the exact same letters with the exact same frequency.
(for example, "name" and "mean" are anagrams, but "red" and "deer" are not).

Given two strings S1 and S2, which each only contain the lowercase letters a through z, 
write a program to determine if S1 and S2 are anagrams. 

=end

class Anagram

	def check(word1,word2)
		@word1 = word1
		@word2 = word2
		@word1_array = []; 
		@word2_array = [];
		if @word1.length == @word2.length
			word1.each_byte{|b| @word1_array << b.chr; }
			word2.each_byte{|b| @word2_array << b.chr; }
			
			if @word1_array.sort == @word2_array.sort
				return puts("The both given words are anagram!")
			else
				return puts("The given words are not anagram!")
			end
		
		else
			return puts("The given words are not anagram")
		end 
	end
end


obj = Anagram.new()

obj.check("name", "mean")



