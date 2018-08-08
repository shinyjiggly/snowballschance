#==============================================================================
# [XP] LAZY LADDER
# by: Anh Nguyen
#==============================================================================
# When you go up and down ladders, your character will always be facing up.
 
module Ladder
  #Terrain tags using as ladder tags
  LADDER_TERRAINS = [5]
  #Maps using ladder tags
  LADDER_MAPS = [1,25,30]
end
 
#==============================================================================
# Game_System
#==============================================================================
 
class Game_System
 
  attr_accessor :ladder
 
  alias ladder_init initialize
  def initialize
    ladder_init
    @ladder = true
  end
 
end
 
#==============================================================================
# Game_Player
#==============================================================================
 
class Game_Player
 
  alias upd_lad update
  def update
    upd_lad
    if $game_system.ladder && Ladder::LADDER_MAPS.include?($game_map.map_id)
      flag = Ladder::LADDER_TERRAINS.include?(terrain_tag)
      @direction = 8 if flag
      @direction_fix = flag
      #note: make this squad compatible
    end
  end
 
end