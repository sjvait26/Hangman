		#this Program is for game Hangman
 
require './figure'

	f = File.open('dict.txt')
	myarray = f.readlines
	score=0; 

  loop do

	max_chances=8  
	word=myarray[rand(myarray.length)]

	puts word	
	word.chop!

	wordlength = word.length
	puts "you have to guess the given word to earn #{wordlength} points" 
	status="XXX"
		(wordlength).times do |x| 
	 		status[x]="X"
      print " X " 
			end
   
	loop do
      puts "guess character"
			gets.chop!
			found=0
			
				(wordlength).times do |x|
        	if($_ ==word[x])
					status[x]=$_
					found=1
			    end
				end
		
				if(found==1)
	      puts"Right Guess"
				else
				max_chances=max_chances-1
				end

			case max_chances

				when 8
				fig0

				when 7
				fig1

				when 6
				fig2

				when 5
				fig3

				when 4
				fig4

				when 3
				fig5

				when 2
				fig6

				when 1
				fig7
       end 			
	
			print status
	    puts " Chances Left #{max_chances}";
      
    	if(max_chances < 2 )
      puts " Sorry Max Chances Exceeded "
			puts " Your Score is #{score}"
			break
      end

			if(status.to_s == word)	 
      puts " Congrats You Guessed it Right "
			score = score + word.length
      puts " Your Score is #{score}"      
			break
			end
  end
		if(max_chances < 2)
    break
    end
puts 'Game Completed'
puts 'aa'
  end
		

