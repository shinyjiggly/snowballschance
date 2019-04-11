#diary arrayyyyyy
#thank you Marrend and Jaiden

class Bluh


$diary  = ["basicpaper"]

  
$diary[0]= "frontcover"
$diary[1]= "controlllsss" 
$diary[2]="todo1" 
$diary[3]="fuguedoodle"
$diary[4]="basicpaper"   
$diary[5]="basicpaper"  
$diary[6]="basicpaper"   
$diary[7]="basicpaper"  
$diary[8]="basicpaper"  
$diary[9]="basicpaper"  
$diary[10]="basicpaper"  
$diary[11]="basicpaper"  
$diary[12]="basicpaper"  
$diary[13]="basicpaper"  
$diary[14]="basicpaper"  
$diary[15]="basicpaper"  
$diary[16]="basicpaper"  
$diary[17]="basicpaper"  
$diary[18]="basicpaper"  
$diary[19]="basicpaper"  

=begin
places where diary entries are changed:
-night 1
$diary[6]="campfiresong"  

also use
popup(1, nil, 0)


=end

end

class Interpreter
def new_page(text)
  i = 0
  while i < $diary.size
    if $diary[i] == "basicpaper" 
     $diary[i] = text
     popup(1, nil, 0)
     $game_temp.common_event_id = 34 #make the diary pop up
     break
   end
   i += 1
   $game_variables[10]+=1
  end
end
#class end
end