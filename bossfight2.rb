# lay out the basic building blocks that need to be in the game
# player health
# boss health
# player strike
# boss strike
# player moves and deals damage to the boss
# boss moves and deals damage to the player
# player loses if health gets to 0 before the boss
# boss loses if health gets to 0 before the player
# continue to loop until this happens
# player must choose an action every round
# boss chooses an action every round
maxdamagedealt = 2
ultdamagedealt = 5
ultdamagetaken = 3
maxplayerdamage = 2
kaijuhealth = 10
playerhealth = 10
while true
  isdodging = false
  useult = false
  puts 'Choose your action: \'hit\', \'dodge\', or \'ult\'.'
  action = $stdin.gets.chomp.downcase
  if action == 'hit'
    puts 'You strike!'
    amt = rand(maxdamagedealt) + 1
    kaijuhealth = kaijuhealth - amt
  elsif action == 'dodge'
    puts 'You dodge!'
    isdodging = true
  elsif action == 'ult'
    puts 'You\'ve used your ult!'
    useult = true
    amt = rand(ultdamagedealt) + 3
    ultamt = rand(ultdamagetaken) + 1
    kaijuhealth = kaijuhealth - amt
    playerhealth = playerhealth - ultamt
  else
    raise 'That\'s not an option! Try again.'
  end
  puts 'The kaiju now has ' + kaijuhealth.to_s + ' health.'
  if kaijuhealth <= 0
    puts "You win! Cascadia\'s safe for another day.\nThere\'s probably a candybar under the jumpseat with your name on it..."
    break
  end
  kaijuaction = 'strike'
  if kaijuaction == 'strike'
    if isdodging == false
    puts 'The kaiju strikes back. You\'ve taken damage!'
    amt = rand(maxplayerdamage) + 1
    playerhealth = playerhealth - amt
  end
end
    puts 'Your mecha is now at ' + playerhealth.to_s + '.'
    if playerhealth <= 0
      puts 'The AXV\'s now trashed... Well this is inconvenient.'
    break
  end
end
