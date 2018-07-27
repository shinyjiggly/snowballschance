#---------------------------------------
#
# Different Font
#
#---------------------------------------

class Font
alias font_fix_initialize initialize

def initialize
font_fix_initialize
self.name = "PlopDump" # Font
self.size = 20 # Size

$defaultfonttype = self.name
$defaultfontsize = self.size
end

end
