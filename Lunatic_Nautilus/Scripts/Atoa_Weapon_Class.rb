#==============================================================================
# ** RPG::Weapon
#------------------------------------------------------------------------------
# Class that manage weapons
#==============================================================================

class RPG::Weapon
  #--------------------------------------------------------------------------
  # * Include Settings Module
  #--------------------------------------------------------------------------
  include Atoa
  #--------------------------------------------------------------------------
  # * Public Instance Variables
  #--------------------------------------------------------------------------
  attr_accessor :hit                   # hit rate
  attr_accessor :crt                   # crtical rate
  attr_accessor :dmg                   # critical damage
  attr_accessor :rcrt                  # critica evade
  attr_accessor :rdmg                  # critical damage resist
  #--------------------------------------------------------------------------
  # * Type string setting
  #--------------------------------------------------------------------------
  def type_name
    return 'Weapon'
  end
  #--------------------------------------------------------------------------
  # * Type ID setting
  #--------------------------------------------------------------------------
  def type_id
    return 0
  end
  #--------------------------------------------------------------------------
  # * Check if object is an weapon
  #--------------------------------------------------------------------------
  def weapon?
    return true
  end
  #--------------------------------------------------------------------------
  # * Check if object is an skill
  #--------------------------------------------------------------------------
  def skill?
    return false
  end
  #--------------------------------------------------------------------------
  # * Check if object is an item
  #--------------------------------------------------------------------------
  def item?
    return false
  end
  #--------------------------------------------------------------------------
  # * Check if object is an armor
  #--------------------------------------------------------------------------
  def armor?
    return false
  end
  #--------------------------------------------------------------------------
  # * Check if object is an battler
  #--------------------------------------------------------------------------
  def battler?
    return false
  end
  #--------------------------------------------------------------------------
  # * Magic verification flag
  #--------------------------------------------------------------------------
  def magic?
    return false
  end
  #--------------------------------------------------------------------------
  # * Object scope
  #--------------------------------------------------------------------------
  def scope
    return 1
  end
  #--------------------------------------------------------------------------
  # * Get Hit Rate
  #--------------------------------------------------------------------------
  def hit
    return 0
  end
  #--------------------------------------------------------------------------
  # * Get Critical Hit Rate
  #--------------------------------------------------------------------------
  def crt
    return 0
  end
  #--------------------------------------------------------------------------
  # * Get Critical Damage Rate
  #--------------------------------------------------------------------------
  def dmg
    return 0
  end
  #--------------------------------------------------------------------------
  # * Get Critical Hit Evasion Rate
  #--------------------------------------------------------------------------
  def rcrt
    return 0
  end
  #--------------------------------------------------------------------------
  # * Get Critical Damage Resist Rate
  #--------------------------------------------------------------------------
  def rdmg
    return 0
  end

end
#==============================================================================
# ** RPG::Armor
#------------------------------------------------------------------------------
# Class that manage armors
#==============================================================================

class RPG::Armor
  #--------------------------------------------------------------------------
  # * Include Settings Module
  #--------------------------------------------------------------------------
  include Atoa
  #--------------------------------------------------------------------------
  # * Public Instance Variables
  #--------------------------------------------------------------------------
  attr_accessor :hit                   # hit rate
  attr_accessor :crt                   # crtical rate
  attr_accessor :dmg                   # critical damage
  attr_accessor :rcrt                  # critica evade
  attr_accessor :rdmg                  # critical damage resist
  #--------------------------------------------------------------------------
  # * Type string setting
  #--------------------------------------------------------------------------
  def type_name
    return 'Armor'
  end
  #--------------------------------------------------------------------------
  # * Type ID setting
  #--------------------------------------------------------------------------
  def type_id
    return @kind + 1
  end
  #--------------------------------------------------------------------------
  # * Check if object is an weapon
  #--------------------------------------------------------------------------
  def weapon?
    return false
  end
  #--------------------------------------------------------------------------
  # * Check if object is an skill
  #--------------------------------------------------------------------------
  def skill?
    return false
  end
  #--------------------------------------------------------------------------
  # * Check if object is an item
  #--------------------------------------------------------------------------
  def item?
    return false
  end
  #--------------------------------------------------------------------------
  # * Check if object is an armor
  #--------------------------------------------------------------------------
  def armor?
    return true
  end
  #--------------------------------------------------------------------------
  # * Check if object is an battler
  #--------------------------------------------------------------------------
  def battler?
    return false
  end
  #--------------------------------------------------------------------------
  # * Magic verification flag
  #--------------------------------------------------------------------------
  def magic?
    return false
  end
  #--------------------------------------------------------------------------
  # * Object scope
  #--------------------------------------------------------------------------
  def scope
    return 1
  end
  #--------------------------------------------------------------------------
  # * Get Hit Rate
  #--------------------------------------------------------------------------
  def hit
    return 0
  end
  #--------------------------------------------------------------------------
  # * Get Critical Hit Rate
  #--------------------------------------------------------------------------
  def crt
    return 0
  end
  #--------------------------------------------------------------------------
  # * Get Critical Damage Rate
  #--------------------------------------------------------------------------
  def dmg
    return 0
  end
  #--------------------------------------------------------------------------
  # * Get Critical Hit Evasion Rate
  #--------------------------------------------------------------------------
  def rcrt
    return 0
  end
  #--------------------------------------------------------------------------
  # * Get Critical Damage Resist Rate
  #--------------------------------------------------------------------------
  def rdmg
    return 0
  end

end

#==============================================================================
# ** RPG::Skill
#------------------------------------------------------------------------------
# Class that manage skills
#==============================================================================

class RPG::Skill
  #--------------------------------------------------------------------------
  # * Include Settings Module
  #--------------------------------------------------------------------------
  include Atoa
  #--------------------------------------------------------------------------
  # * Type string setting
  #--------------------------------------------------------------------------
  def type_name
    return 'Skill'
  end
  #--------------------------------------------------------------------------
  # * Check if object is an weapon
  #--------------------------------------------------------------------------
  def weapon?
    return false
  end
  #--------------------------------------------------------------------------
  # * Check if object is an skill
  #--------------------------------------------------------------------------
  def skill?
    return true
  end
  #--------------------------------------------------------------------------
  # * Check if object is an item
  #--------------------------------------------------------------------------
  def item?
    return false
  end
  #--------------------------------------------------------------------------
  # * Check if object is an armor
  #--------------------------------------------------------------------------
  def armor?
    return false
  end
  #--------------------------------------------------------------------------
  # * Check if object is an battler
  #--------------------------------------------------------------------------
  def battler?
    return false
  end
  #--------------------------------------------------------------------------
  # * Magic verification flag
  #--------------------------------------------------------------------------
  def magic?
    return @atk_f == 0 ? true : false
  end
end

#==============================================================================
# ** RPG::Item
#------------------------------------------------------------------------------
# Class that manage items
#==============================================================================

class RPG::Item
  #--------------------------------------------------------------------------
  # * Include Settings Module
  #--------------------------------------------------------------------------
  include Atoa
  #--------------------------------------------------------------------------
  # * Type string setting
  #--------------------------------------------------------------------------
  def type_name
    return 'Item'
  end
  #--------------------------------------------------------------------------
  # * Check if object is an weapon
  #--------------------------------------------------------------------------
  def weapon?
    return false
  end
  #--------------------------------------------------------------------------
  # * Check if object is an skill
  #--------------------------------------------------------------------------
  def skill?
    return false
  end
  #--------------------------------------------------------------------------
  # * Check if object is an item
  #--------------------------------------------------------------------------
  def item?
    return true
  end
  #--------------------------------------------------------------------------
  # * Check if object is an armor
  #--------------------------------------------------------------------------
  def armor?
    return false
  end
  #--------------------------------------------------------------------------
  # * Check if object is an battler
  #--------------------------------------------------------------------------
  def battler?
    return false
  end
  #--------------------------------------------------------------------------
  # * Magic verification flag
  #--------------------------------------------------------------------------
  def magic?
    return false
  end
end

#==============================================================================
# ** RPG::Cache
#------------------------------------------------------------------------------
# Class that save in cache and loads bitmaps
#==============================================================================

module RPG::Cache
  #--------------------------------------------------------------------------
  # Load face graphics
  #     filename : file name
  #     hue      : hue information
  #--------------------------------------------------------------------------
  def self.faces(filename, hue = 0)
    self.load_bitmap('Graphics/Faces/', filename, hue)
  end
  #--------------------------------------------------------------------------
  # Load digits graphics
  #     filename : file name
  #     hue      : hue information
  #--------------------------------------------------------------------------
  def self.digits(filename, hue = 0)
    self.load_bitmap('Graphics/Digits/', filename, hue)
  end
end