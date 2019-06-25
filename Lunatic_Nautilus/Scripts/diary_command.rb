
class Interpreter
def new_page(text)
  i = 0
  while i < $diary.size
    if $diary[i] == "basicpaper" 
     $diary[i] = text
     popup(1, nil, 0)
     #set the jumppage here
     $game_variables[52]=i
     $game_temp.common_event_id = 34 #make the diary pop up
     break
   end
   i += 1
   $game_variables[10]+=1
  end
end
=begin
places where diary entries are changed:
-night 1
$diary[6]="campfiresong"  

also use
popup(1, nil, 0)


=end

#class end
end