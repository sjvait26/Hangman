def fig0
puts " -----------"
puts " |         |"
puts " |"
puts " |"
puts " |"
puts " |"
puts "_|_"
end
def fig1
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |"
puts " |"
puts " |"
puts " |"
puts "_|_"
end
def fig2
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |          | "
puts " |"
puts " |"
puts " |"
puts "_|_"
end
def fig3
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |          | "
puts " |        \\_|"
puts " |"
puts " |"
puts "_|_"
end
def fig4
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |          | "
puts " |        \\_|_/"
puts " |"
puts " |"
puts "_|_"
end
def fig5
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |          | "
puts " |        \\_|_/"
puts " |          |"
puts " |"
puts "_|_"
end
def fig6
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |          | "
puts " |        \\_|_/"
puts " |          |"
puts " |         / "
puts "_|_"
end
def fig7
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "def fig0
puts " -----------"
puts " |         |"
puts " |"
puts " |"
puts " |"
puts " |"
puts "_|_"
end
def fig1
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |"
puts " |"
puts " |"
puts " |"
puts "_|_"
end
def fig2
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |          | "
puts " |"
puts " |"
puts " |"
puts "_|_"
end
def fig3
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |          | "
puts " |        \\_|"
puts " |"
puts " |"
puts "_|_"
end
def fig4
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |          | "
puts " |        \\_|_/"
puts " |"
puts " |"
puts "_|_"
end
def fig5
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |          | "
puts " |        \\_|_/"
puts " |          |"
puts " |"
puts "_|_"
end
def fig6
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |          | "
puts " |        \\_|_/"
puts " |          |"
puts " |         / "
puts "_|_"
end
def fig7
puts " ------------ "
puts " |         _|_"
puts " |        (> <)"
puts " |          - "
puts " |          | "
puts " |        \\_|_/"
puts " |          |"
puts " |         / \\ "
puts "_|_"
end
puts " |          | "
puts " |        \\_|_/"
puts " |          |"
puts " |         / \\ "
puts "_|_"
end
f = File.open('dict.txt')
myarray = f.readlines
word=myarray[rand(myarray.length)]
#puts new
puts word
word.chop!
puts word[0]
wordlength = word.length
puts "you have to guess the given word to earn #{wordlength} points" 
status =[]
(wordlength).times do |x| 
	 status[x]="X"
         print " X " 
end

score=0;
max_chances=8
actualcount=0
(max_chances).times do |loop_count|
	
	if(actualcount<=max_chances)
		if(actualcount==wordlength)
			flag=1
			print "congrats you have accurately guessed the correct word\n"
			break
		
		else	
			puts "guess character"
			gets.chop!
			
			(wordlength).times do |x|
           		    if($_ ==word[x])
				actualcount+=1
				status[x]=$_
			    end
			end
			case loop_count
			when 0
			fig0
			when 1
			fig1
			when 2
			fig2
			when 3
			fig3
			when 4
			fig4
			when 5
			fig5
			when 6
			fig6
			when 7
			fig7
                        end 			
			print status
	        	puts " Chances Left #{max_chances-loop_count-1}";puts actualcount
                         #print actualcount;print "\n"
			
		end
	else 
		print "your have made your maximum number of guesses .....SORRY YOU LOOSE"
	end
	if(flag==0)
		print "your have made your maximum number of guesses .....SORRY YOU LOOSE"
	end
end
 

