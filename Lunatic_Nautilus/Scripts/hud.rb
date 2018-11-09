# Your Very Own Hud 
# by Kiriashi

class Window_YourHUD < Window_Base
  def initialize
    super(0, 0, 640, 64)
    self.opacity = 0
    self.contents = Bitmap.new(640 - 32, 64 - 32)#(640 - 32, 64 - 32)
    refresh
  end
  def refresh
    self.contents.clear
    reset_variables
    return if !@actor
    draw_actor_hp(@actor, 0, 0)
    draw_actor_sp(@actor, 300, 0)
    #draw_actor_exp(@actor, 500, 0)
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