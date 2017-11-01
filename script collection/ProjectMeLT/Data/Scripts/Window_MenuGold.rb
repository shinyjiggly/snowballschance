# ▼▲▼ XRXS_MeLT. プラグインC1 : コインライン ▼▲▼
#
#
#==============================================================================
# Window_MenuGold
#==============================================================================
class Window_MenuGold < Window_Base
  #
  # ラインファイル名 (Windowskins)
  #
  LINE = "MenuGoldLine"
  #
  # 縁取り色
  #
  HEMCOLOR = Color.new(0,48,96,255)
  #
  # 位置 (0:左寄せ, 2:右寄せ)
  #
  ALIGN = 0
  #--------------------------------------------------------------------------
  # --- ウィンドウスライディングを搭載 ---
  #--------------------------------------------------------------------------
  include XRXS_WindowSliding
  #--------------------------------------------------------------------------
  # ○ オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize
    x = (ALIGN == 2 ? 512 : -48)
    super(x, 404, 192, 58)
    @slide_x_speed = (1 - ALIGN) * 8
    self.opacity = 0
    self.contents = Bitmap.new(width - 32, height - 32)
    self.contents.font.color = normal_color
    self.contents.font.size = 21
    refresh
  end
  #--------------------------------------------------------------------------
  # ○ リフレッシュ
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    line = RPG::Cache.windowskin(LINE)
    self.contents.blt(0,4,line,line.rect)
    self.contents.draw_hemming_text(0, 0, 96, 18, $game_party.gold.to_s, 2, HEMCOLOR)
  end
end
#==============================================================================
# --- メニューレイアウト 拡張定義 ---
#==============================================================================
class Scene_Menu
  alias xrxs_melt_pi1_make_windows make_windows
  def make_windows
    xrxs_melt_pi1_make_windows
    @windows.push(Window_MenuGold.new)
  end
end
