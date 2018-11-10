# Your Very Own Hud 
# by Kiriashi
# (and then mutilated by lavendersiren)
# http://www.gdunlimited.net/forums/topic/3598-your-very-own-hud/

class Window_YourHUD < Window_Base
  attr_accessor :show_bars
  def initialize
    super(0, 0, 200, 100)
    self.opacity = 0
    self.contents = Bitmap.new(200 - 32, 100 - 32)
    @show_bars=false
    refresh
  end
  
  def refresh
    self.contents.clear
    reset_variables
    

    
  if Input.trigger?(Input::X)
      if @show_bars == true
      @show_bars = false
    else
      @show_bars = true
    end
  end
  
    if @show_bars==true and $game_switches[8]==false 
      #general cutscene switch is off
    return if !@actor
    #draw_actor_name(@actor, 0, 32) #where the hell do I fit this
    draw_actor_hp(@actor, 30, 8,width = 144)
    draw_actor_sp(@actor, 30, 32, width = 144)
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