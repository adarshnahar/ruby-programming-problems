#using stacks and flows for dividing portions of the window


class Resume
	def add_degree()
		
	end
end

obj = Resume.new

Shoes.app :title => "Hello World", :width => 1024, :height => 768, :scroll =>true do
	
	stack :width => "100%" do
		background "#D7D6EE".."#9D9BD0"
		title "Resume { ... generator}",
		:stroke => "#52585B",
		:margin_left => 260
	end 
	
	stack :width => "100%" do
		flow :width => "99%", :margin => 20 do
			
			stack :width => "100%" do
				flow :width => "99%", :margin => 20 do
					para "Your Contact Details : ",
					:stroke => "#52585B"
					@contact_details = edit_box :width => "75%", :height => 200, :margin_left => 50
				end
			end
			
			stack :width => "100%" do
				flow :width => "99%", :margin => 20 do
					para "Your Skill Details:",
					:stroke => "#52585B"
					@skill_details = edit_box :width => "78%", :height => 200, :margin_left => 80
				end
			end

			stack :width => "100%" do
				flow :width => "99%", :margin => 20 do
					para "Your Experience Details:",
					:stroke => "#52585B"
					@exp_details = edit_box :width => "73%", :height => 200, :margin_left => 30
				end
			end

			stack :width => "100%" do
				flow :width => "99%", :margin => 20 do
					para "Your Degree Details:",
					:stroke => "#52585B"
				end
				flow :width => "99%", :margin => 20 do
					button "Open window" do
						window :title => "Child" do
							para "Hello I am Child"
						end
					end
				end
			end
			

		end
		
	end

	# stack :width => "50%" do
	# 		background white
	# 		para "Right side has some text"
	# 		para "without an inner flow."
	# 	end
	end