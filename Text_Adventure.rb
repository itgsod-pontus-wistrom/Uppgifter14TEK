# Adventure game based on text
# The player goes from room to room
# The player has to choose between different alternative

# Database of different stories/adventures
# Each description is included in an array where the fist element [0] is the description itself, the second element is
# The second element are is the number of choices
# The other elements are the indexes of the answer
# text = ['description', number_of_choices, node1, node2.....]

text0 = ['Welcome to our Adventure game! Do you need help?[y:1, n:2]',2,1,2]
text1 = ['This game waits for an answer from the player...
Do you want to continue? [y:1, n:2]?',2,2,3]


text2 = ['First room. Were do you want to go? [n:1, s:2, e:3, w:4]?',4,4,5,6,7]
text3 = ['']

data = [text0, text1, text2, text3]

# Start

# Show description of the room

def show(text)
  puts text[0]
end

def select(data, n)
  # n is the index of the selected story
  puts data[n][0]
  return data[n]
end

def select_story(text, ans)
  return text[ans+1]
end

# TODO: A menu
# Gets the answer from the player

puts text1[0]
text = text1

loop{

answer = gets.chomp.to_i

# Select the correct story

n = select_story(text,answer)
text = select(data,n)


}

# Loop to start