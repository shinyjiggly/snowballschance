#-----------------------------------
#
# Some fancy-ass cooking menu
# By shinyjiggly
#
#------------------------------------

class Window_Cooking < Window_Base #top
  
def initialize
    super(0, 0, 640, 64)
    self.contents = Bitmap.new(width-32, height-32)
    refresh
  end
  
def refresh
    self.contents.clear
    self.contents.font.color = text_color(0)
    self.contents.draw_text(0, 0, width-32, 32, "Recipe Menu",1) 
  end
end

class Window_ava < Window_Base #available menu topper
  
def initialize
    super(0, 0, 320, 64)
    self.contents = Bitmap.new(width-32, height-32)
    refresh
  end
  
def refresh
    self.contents.clear
    self.contents.font.color = text_color(6)
    self.contents.draw_text(0, 0, width-32, 32, "Available Recipes",1) 
  end
  
end

class Window_avarec < Window_Base #available menu body
  
def initialize
    super(0, 0, 320, 192)
    self.contents = Bitmap.new(width-32, height-32)
    refresh
  end
  
def refresh
    y=0
    self.contents.clear
    self.contents.font.color = text_color(0)
    #make this thing better later
    self.contents.draw_text(0, y, width-32, 32, "menu item 1") 
    y+=32
    self.contents.draw_text(0, y, width-32, 32, "menu item 2") 
    y+=32
  end
  
end



class Window_ing < Window_Base
  
def initialize
    super(0, 0, 320, 64)
    self.contents = Bitmap.new(width-32, height-32)
    refresh
  end
  
def refresh
    self.contents.clear
    self.contents.font.color = text_color(6)
    self.contents.draw_text(0, 0, width-32, 32, "Ingredients Used:",1) 
  end
  
end

class Window_ingrec < Window_Base #ingredience menu body
  
def initialize
    super(0, 0, 320, 128)
    self.contents = Bitmap.new(width-32, height-32)
    refresh
  end
  
def refresh
    y=0
    self.contents.clear
    self.contents.font.color = text_color(0)
    #make this thing better later
    self.contents.draw_text(0, y, width-32, 32, "Ingredient 1") 
    y+=32
    self.contents.draw_text(0, y, width-32, 32, "Ingredient 2") 
    y+=32
    self.contents.draw_text(0, y, width-32, 32, "Ingredient 3") 
    y+=32
  end
  
end


class Scene_Cooking

def main
  @window_1=Window_Cooking.new
  @window_2=Window_ava.new
  @window_2.y=64
  @window_3=Window_avarec.new
  @window_3.y=128
  
  @window_4=Window_ing.new
  @window_4.x=320
  @window_4.y=64
  @window_5=Window_ingrec.new
  @window_5.x=320
  @window_5.y=128

   Graphics.transition
   loop do
    Graphics.update
    Input.update
    update
    if $scene != self
     break
    end
   end

  Graphics.freeze
   @window_1.dispose
   @window_2.dispose
   @window_3.dispose
   @window_4.dispose
   @window_5.dispose
  end

def update
   @window_1.update
   if Input.trigger?(Input::B)
     $game_system.se_play($data_system.cancel_se)
     $scene = Scene_Map.new
   end
  end

end