#cooking calculations
#the number returned is an armor entry in the database.
# by Theo and lavendersiren

class Cookcalc

  ResultHash = {
  #mushroom first, ingredient second
  #plain
  [0,0] => 16,
  [0,1] => 20,
  [0,2] => 17,
  [0,3] => 19,
  [0,4] => 21,
  #poisoned
  [1,0] => 31,
  [1,1] => 32,
  [1,2] => 29,
  [1,3] => 30,
  [1,4] => 33,
  #boosted
  [2,0] => 18,
  [2,1] => 26,
  [2,2] => 23,
  [2,3] => 24,
  [2,4] => 27
  }
  
  def self.armornum
    ingre=$game_variables[10]
    shroom=$game_variables[11]
    return ResultHash[[shroom,ingre]]
  end
  
  def self.gimmearmor
  $game_party.gain_armor(Cookcalc.armornum, 1)
  end

  def self.newequip
  if $game_variables[9]<=0
    p "ur a bitche"
  else
     if $game_variables[9]==1
    @bbb= 12 #coda 
  else
  if $game_variables[9]==2
    @bbb= 6 #topaz
  else
  if $game_variables[9]==3
    @bbb= 3 #vern
  else
  if $game_variables[9]==4
    @bbb= 2 #frie
  else
  if $game_variables[9]==5
    @bbb= 4 #arctos
  else
    p "ur a bitch"
  end
  end
  end
  end
  end
  
  end

  $game_actors[@bbb].equip(2, Cookcalc.armornum)
end

end