# Your Very Own Hud 
# by Kiriashi
# (and then mutilated by lavendersiren)
# http://www.gdunlimited.net/forums/topic/3598-your-very-own-hud/
# $game_switches[16] is used to show bars
#$game_switches[12] is used to denote a cutscene

class Window_YourHUD < Window_Base
  def initialize
    super(0, 400, 640, 100)
    self.opacity = 0
    self.contents = Bitmap.new(640 - 32, 100 - 32)
    refresh
  end
  
  def refresh
    self.contents.clear
    reset_variables
    

  if $game_switches[12]==false #if not during a cutscene
    if Input.trigger?(Input::X)
      if $game_switches[16] == true
      $game_switches[16] = false
      else
      $game_switches[16] = true
      end
    end
  end
  
    if $game_switches[16]==true and $game_switches[12]==false 
      #if bars are meant to be shown and it isn't a cutscene
    return if !@actor
    for i in 0...$game_party.actors.size
    x = i *150
    y = 2
    @actor = $game_party.actors[i]
    #draw_actor_graphic(@actor, 20 , 20)
    draw_actor_name(@actor, x+58, -8)
    draw_actor_hp(@actor, x, 15,width = 144)
    draw_actor_sp(@actor, x, 35, width = 144)
  end
  self.opacity = 128
else
   self.opacity = 0
  end
  
end

  def reset_variables
    @actor = $game_party.actors[0]
    @old_hp = @actor ? @actor.hp : 0
    @old_maxhp = @actor ? @actor.maxhp : 0
    @old_sp = @actor ? @actor.sp : 0
    @old_maxsp = @actor ? @actor.maxsp : 0
  end
  def update
    super
    refresh if (@actor = $game_party.actors[0] or
                @old_hp = @actor ? @actor.hp : 0 or
                @old_maxhp = @actor ? @actor.maxhp : 0 or
                @old_sp = @actor ? @actor.sp : 0 or
                @old_maxsp = @actor ? @actor.maxsp : 0)
  end
end
class Scene_Map
  alias yourhud_main main
  alias yourhud_update update
  def main
    @yourhud = Window_YourHUD.new
    yourhud_main
    @yourhud.dispose
  end
  def update
    @yourhud.update
    yourhud_update
  end
end