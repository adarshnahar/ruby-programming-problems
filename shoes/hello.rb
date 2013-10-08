#using buttons and alerts
# Shoes.app :title => "Hello World!" do
# 	button "Click Me!" do
#   		alert "Hello World!"
#   	end
# end

# using stacks
# Shoes.app :title => "Hello World!", :width => 244, :height => 100 do
# 	stack do 
# 		para "Hello"
# 		para "World"
# 	end
# end

#using flow
# Shoes.app :title => "Hello World!", :width => 244, :height => 100 do
# 	flow do 
# 		para "Hello"
# 		para "World"
# 	end
# end


#using stacks and flows for dividing portions of the window
# Shoes.app :title => "Hello World", :width => 320, :height => 240 do
	
# 	stack :width => "100%" do
# 		background "#F3F".."#F90"
# 		title "Hello World"
# 	end 
	
# 	stack :width => "50%" do
# 		flow :width => "100%" do
# 			para "Left side has some text"
# 		end
# 	end

# 	stack :width => "50%" do
# 			background white
# 			para "Right side has some text"
# 			para "without an inner flow."
# 		end
# 	end

#input with shoes
# Shoes.app :title => "Hello World!" do
# 	para "Enter Your Name"
# 	@name = edit_line
# 	button "Go" do
# 		name = @name.text
# 		alert "Hello #{name}"
# 	end
# end

#password with shoes
# Shoes.app :title => "Password" do
# 	para "Enter Password"
# 	@pass = edit_line(:secret => true)
# 	end

# Textboxes or textarea with shoes
# Shoes.app :title => "Textboxes" do
# 	para "textbox"
# 	@text = edit_box
# 	end

# List box or Select box
# Shoes.app :title => "Listbox" do
# 	para "Listbox"
# 	@text = list_box :items => ["red", "green", "blue", "gray"]
# 	end

#Opening Windows
# Shoes.app :title => "Window" do

# 	button "Open window" do
# 		window :title => "Child" do
# 			para "Hello I am Child"
# 		end
# 	end
# end


# Creating backgrounds
Shoes.app(:width => 600, :height => 400) do
      fill rgb(0, 0.6, 0.9, 0.1)
      stroke rgb(0, 0.6, 0.9)
      strokewidth 0.25
      500.times do
        oval(
          :left => (-5..self.width).rand,
          :top => (-5..self.height).rand,
          :radius => (25..50).rand
        )
      end
    end