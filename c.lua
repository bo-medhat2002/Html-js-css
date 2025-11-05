local hello = gg.alert([[
░░░░░░░░░░░░░░░░░░░░░░
★ ＡＲＩＳＥ ＶＩＰ ★
───────────────────────

𝙑 𝙀 𝙍 𝙎 𝙄 𝙊 𝙉   ➤ 𝗧 𝗥 𝗜 𝗔 𝗟

░░░░░░░░░░░░░░░░░░░░░░
]], "⚡ SHADOW ENTRY ⚡", "❌ EXIT ❌")

if hello == 1 then
local toggle = {
  headshot = false,
  antenna = false,
  glich = false,
  awm = false,
  location = false,
  speed = false,
  hand = false,
  gloo = false,
}

function REX()
  gg.setVisible(false)
  local menuList = {}
  local menuMap = {}

  if not toggle.headshot then
    table.insert(menuList, "⬛⃢ ꜱɴɪᴩᴇʀ ᴀɪᴍʙᴏᴛ ˡᵒᵍⁱⁿ🌀")
    menuMap[#menuList] = "headshot"
  end
  if not toggle.antenna then
    table.insert(menuList, "⬛⃢ ꜰᴀꜱᴛ ꜱᴡɪᴛᴄʜ ˡᵒᵍⁱⁿ⚡")
    menuMap[#menuList] = "antenna"
  end
  if not toggle.glich then
    table.insert(menuList, "⬛⃢ ɢʟɪᴛᴄʜ ꜰɪʀᴇ ˡᵒᵍⁱⁿ💠")
    menuMap[#menuList] = "glich"
  end
  if not toggle.awm then
    table.insert(menuList, "⬛⃢ ᴀᴡᴍ ʟᴏᴄᴀᴛɪᴏɴ ˡᵒᵍⁱⁿ✡️")
    menuMap[#menuList] = "awm"
  end
  if not toggle.location then
    table.insert(menuList, "⬛⃢ ʟᴏᴏᴛ ʟᴏᴄᴀᴛɪᴏɴ ˡᵒᵍⁱⁿ🔍")
    menuMap[#menuList] = "location"
  end
  if not toggle.hand then
    table.insert(menuList, "⬛⃢ ᴀɴᴛᴇɴɴᴀ ʜᴀɴᴅ ˡᵒᵍⁱⁿ[ꜱᴀꜰᴇ ?]🗞️")
    menuMap[#menuList] = "hand"
  end
  if not toggle.gloo then
    table.insert(menuList, "⬛⃢ ɪɴᴠɪꜱɪʙʟᴇ ɢʟᴏᴏ ˡᵒᵍⁱⁿ[ꜱᴀꜰᴇ ?]🧊")
    menuMap[#menuList] = "gloo"
  end

  -- Speed always visible
  table.insert(menuList, (toggle.speed and "⬜⃢ ꜱᴩᴇᴇᴅ 50x ɪɴ ɢᴀᴍᴇ[ꜱᴀꜰᴇ ?]🔥" or "⬛⃢ ꜱᴩᴇᴇᴅ 50x [ꜱᴀꜰᴇ ?]🚀"))
  menuMap[#menuList] = "speed"
  table.insert(menuList, "🗡️ᴇxɪᴛ ꜱᴄʀɪᴩᴛ")
  local exitIndex = #menuList

  local menu = gg.choice(menuList, nil, [[
   ⚡🗡️ OWNER : ＡＲＩＳＥ 🗡️⚡
  ]])

  if menu == nil then
    gg.toast("⚠️ No option selected")
    return
  end

  if menu == exitIndex then
    os.exit()
  else
    local selected = menuMap[menu]
    if selected == "headshot" then
      toggle.headshot = true
      headshot()
    elseif selected == "antenna" then
      toggle.antenna = true
      antenna()
    elseif selected == "glich" then
      toggle.glich = true
      glich()
    elseif selected == "awm" then
      toggle.awm = true
      awm()
    elseif selected == "location" then
      toggle.location = true
      location()
    elseif selected == "hand" then
      toggle.hand = true
      hand()
    elseif selected == "gloo" then
      toggle.gloo = true
      gloo()
    elseif selected == "speed" then
      toggle.speed = not toggle.speed
      speed(toggle.speed)
    end
  end
end

function headshot()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 3F 33 33 13 40 00 00 B0 3F 00 00 80 3F 01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("h 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 06 00 00 00 00 00 80 3f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 33 13 40 00 00 B0 3F 00 00 80 3F 01", gg.TYPE_BYTE)
  gg.clearResults()
  gg.toast(" ᴀᴡᴍ ᴀɪᴍʙᴏᴛ ᴏɴ✅")
end

function antenna()
  gg.setRanges(32)
  gg.searchNumber("h B4 42 96 00 00 00 00 00 00 00 00 00 00 3F 00 00 80 3E 00 00 00 00 04 00 00 00 00 00 80 3F 00 00 20 41 00 00 34 42 01", 1)
  gg.getResults(gg.getResultsCount())
  gg.editAll("h B4 42 96 00 00 00 00 00 00 00 00 00 00 3B 00 00 80 3B 00 00 00 00 04 00 00 00 00 00 80 3F 00 00 20 41 00 00 34 42 01", 1)
  gg.clearResults()
  gg.toast("💢ꜰᴀꜱᴛ ꜱᴡɪᴛᴄʜ ᴏɴ💢")
end

function glich()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h C0 3F 00 00 00 3F 00 00 80 3F 00 00", gg.TYPE_BYTE)
  gg.getResults(1000)
  gg.editAll("h 00 00 00 00 00 3F 00 00 80 3F 00 00", gg.TYPE_BYTE)
  gg.clearResults()
  gg.toast("💢ɢʟɪᴛᴄʜ ꜰɪʀᴇ ᴏɴ💢")
end

function awm()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("hb4 42 96 00 00 00 00 00 00 00 00 00 00 3f 00 00 80 3e", gg.TYPE_BYTE)
  gg.getResults(gg.getResultsCount())
  gg.editAll("hb4 42 96 00 00 00 00 00 00 00 00 00 00 3b 00 00 29 3d", gg.TYPE_BYTE)
  gg.clearResults()

  gg.searchNumber("h42 00 00 70 42 7f 00 00 00 00 00 00", gg.TYPE_BYTE)
  gg.getResults(gg.getResultsCount())
  gg.editAll("h42 00 00 3f 42 3f 00 00 00 00 00 00", gg.TYPE_BYTE)
  gg.clearResults()

  gg.searchNumber("h00 00 00 3F 00 00 80 3E", gg.TYPE_BYTE)
  gg.getResults(gg.getResultsCount())
  gg.editAll("h00 00 3C 00 00 80 3C", gg.TYPE_BYTE)
  gg.clearResults()

  gg.searchNumber(";ingame/pickup/pickup_awm", gg.TYPE_WORD)
  gg.getResults(gg.getResultsCount())
  gg.editAll(";effects/vfx_ingame_laser", gg.TYPE_WORD)
  gg.clearResults()

  gg.searchNumber(";ingame/pickup/pickup_m24", gg.TYPE_WORD)
  gg.getResults(gg.getResultsCount())
  gg.editAll(";effects/vfx_ingame_laser", gg.TYPE_WORD)
  gg.clearResults()

  gg.searchNumber(";ingame/pickup/ammo/pickup_ammo_sng", gg.TYPE_WORD)
  gg.getResults(gg.getResultsCount())
  gg.editAll(";effects/vfx_inagme_laser_shop", gg.TYPE_WORD)
  gg.clearResults()

  gg.toast("Sniper+Ammo Location Activated 🔫")
end

function location()
  gg.setRanges(32)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 69 00 6E 00 67 00 61 00 6D 00 65 00 2F 00 61 00 73 00 73 00 69 00 73 00 74 00 61 00 6E 00 74 00 69 00 74 00 65 00 6D 00 2F 00 69 00 6E 00 67 00 61 00 6D 00 65 00 5F 00 73 00 68 00 6F 00 70 00", 1)
  gg.getResults(10000)
  gg.editAll("h 65 00 66 00 66 00 65 00 63 00 74 00 73 00 2F 00 76 00 66 00 78 00 5F 00 69 00 6E 00 67 00 61 00 6D 00 65 00 5F 00 6C 00 61 00 73 00 65 00 72 00 5F 00 67 00 72 00 65 00 65 00 6E 00", 1)
  gg.toast("WALL SHOP〘ON〙")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h69006E00670061006D0065002F007000690063006B00750070002F007000690063006B00750070005F00740072006500610074006D0065006E007400670075006E00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("h65006600660065006300740073002F007600660078005F0069006E00670061006D0065005F006C0061007300650072005F0062006C00750065006300610072006400", gg.TYPE_BYTE)
  gg.toast("LOCAL HEALING GUN〘ON〙")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h69006E00670061006D0065002F007000690063006B00750070002F006100740074006100630068006D0065006E0074002F007000690063006B00750070005F00730069006C0065006E006300650072005F003100", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("h65006600660065006300740073002F007600660078005F0069006E00670061006D0065005F006C0061007300650072005F0063006100720065007000610063006B00610067006500", gg.TYPE_BYTE)
  gg.toast("LOCAL SILENCER〘ON〙")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 69 00 6E 00 67 00 61 00 6D 00 65 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 2F 00 69 00 74 00 65 00 6D 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 5F 00 69 00 6E 00 68 00 61 00 6C 00 65 00 72 00", gg.TYPE_BYTE)
  gg.getResults(400)
  gg.editAll("h 65 00 66 00 66 00 65 00 63 00 74 00 73 00 2F 00 66 00 66 00 5F 00 66 00 78 00 5F 00 67 00 75 00 69 00 64 00 65 00 5F 00 61 00 72 00 72 00 6F 00 77 00", gg.TYPE_BYTE)
  gg.toast("LOCAL INHALER〘ON〙")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 69 00 6E 00 67 00 61 00 6D 00 65 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 2F 00 63 00 61 00 6E 00 64 00 79 00 2F 00 6F 00 62 00 33 00 31 00 2F 00 69 00 6E 00 67 00 61 00 6D 00 65 00 74 00 6F 00 6B 00 65 00 6E 00 5F 00 6C 00 65 00 73 00 73 00", gg.TYPE_BYTE)
  gg.getResults(400)
  gg.editAll("h 65 00 66 00 66 00 65 00 63 00 74 00 73 00 2F 00 76 00 66 00 78 00 5F 00 69 00 6E 00 67 00 61 00 6D 00 65 00 5F 00 6C 00 61 00 73 00 65 00 72 00", gg.TYPE_BYTE)
  gg.toast("LOCAL SUPER MEDKIT〘ON〙")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 69 00 6E 00 67 00 61 00 6D 00 65 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 2F 00 69 00 74 00 65 00 6D 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 5F 00 66 00 61 00 6B 00 5F 00 31 00", 1)
  gg.getResults(10000)
  gg.editAll("h 65 00 66 00 66 00 65 00 63 00 74 00 73 00 2F 00 76 00 66 00 78 00 5F 00 69 00 6E 00 67 00 61 00 6D 00 65 00 5F 00 6C 00 61 00 73 00 65 00 72 00 5F 00 67 00 72 00 65 00 65 00 6E 00", 1)
  gg.toast("LOCAL MEDKIT〘ON〙")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 69 00 6E 00 67 00 61 00 6D 00 65 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 2F 00 62 00 61 00 67 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 5F 00 62 00 61 00 67 00 5F 00 33 00", gg.TYPE_BYTE)
  gg.getResults(400)
  gg.editAll("h 65 00 66 00 66 00 65 00 63 00 74 00 73 00 2F 00 76 00 66 00 78 00 5F 00 69 00 6E 00 61 00 67 00 6D 00 65 00 5F 00 6C 00 61 00 73 00 65 00 72 00 5F 00 73 00 68 00 6F 00 70 00", gg.TYPE_BYTE)
  gg.toast("LOCAL BACKPACK V3〘ON〙")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 69 00 6E 00 67 00 61 00 6D 00 65 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 2F 00 61 00 74 00 74 00 61 00 63 00 68 00 6D 00 65 00 6E 00 74 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 5F 00 67 00 6F 00 6C 00 64 00 5F 00 6D 00 34 00 61 00 31 00 5F 00 61 00 74 00 74 00 61 00 63 00 68 00 6D 00 65 00 6E 00 74 00", 1)
  gg.getResults(10000)
  gg.editAll("h 65 00 66 00 66 00 65 00 63 00 74 00 73 00 2F 00 76 00 66 00 78 00 5F 00 69 00 6E 00 67 00 61 00 6D 00 65 00 5F 00 6C 00 61 00 73 00 65 00 72 00 5F 00 63 00 61 00 72 00 65 00 70 00 61 00 63 00 6B 00 61 00 67 00 65 00", 1)
  gg.toast("LOCAL CHIP UPGRADE〘ON〙")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 69 00 6E 00 67 00 61 00 6D 00 65 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 2F 00 68 00 65 00 6C 00 6D 00 65 00 74 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 5F 00 68 00 65 00 6C 00 6D 00 65 00 74 00 5F 00 33 00", gg.TYPE_BYTE)
  gg.getResults(400)
  gg.editAll("h 65 00 66 00 66 00 65 00 63 00 74 00 73 00 2F 00 76 00 66 00 78 00 5F 00 69 00 6E 00 67 00 61 00 6D 00 65 00 5F 00 6C 00 61 00 73 00 65 00 72 00 5F 00 63 00 61 00 72 00 65 00 70 00 61 00 63 00 6B 00 61 00 67 00 65 00", gg.TYPE_BYTE)
  gg.toast("LOCAL HELMET LV3〘ON〙")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h 69 00 6E 00 67 00 61 00 6D 00 65 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 2F 00 61 00 72 00 6D 00 6F 00 72 00 2F 00 70 00 69 00 63 00 6B 00 75 00 70 00 5F 00 61 00 72 00 6D 00 6F 00 72 00 5F 00 33 00", gg.TYPE_BYTE)
  gg.getResults(400)
  gg.editAll("h 65 00 66 00 66 00 65 00 63 00 74 00 73 00 2F 00 76 00 66 00 78 00 5F 00 69 00 6E 00 67 00 61 00 6D 00 65 00 5F 00 6C 00 61 00 73 00 65 00 72 00", gg.TYPE_BYTE)
  gg.toast(" COLECTE LOCATION LV3〘ON〙")
  gg.clearResults()
  gg.toast("CUSTOM DATA ❪✔️️❫")
  gg.toast("LOOT LOCATION ON")
end

function hand()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-0.02980032004;1;0.48141112924::9", gg.TYPE_FLOAT)
  gg.refineNumber("1", gg.TYPE_FLOAT)
  gg.getResults(gg.getResultsCount())
  gg.editAll("3000", gg.TYPE_FLOAT)
  gg.clearResults()

  gg.searchNumber("0.09043131769;1;0.14753369987::9", gg.TYPE_FLOAT)
  gg.refineNumber("1", gg.TYPE_FLOAT)
  gg.getResults(gg.getResultsCount())
  gg.editAll("3000", gg.TYPE_FLOAT)
  gg.clearResults()

  gg.toast("Antenna Hand Activated ")
end

function gloo()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7209065;6357095;6619245;6357039;7536755;7536745;6357108;7602286;7602281;7143525;6881327;6619235;6357111;7077996;6422623;7209077;6619243;114:69", gg.TYPE_DWORD)
  gg.getResults(gg.getResultsCount())
  gg.editAll(";effects/vfx_pet/vfx_petskill_robot", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Invisible Gloo Wall Enabled")
end

function speed(active)
  gg.setRanges(gg.REGION_ANONYMOUS)
  if active then
    gg.searchNumber("h 01 00 00 00 02 2B 07 3D", gg.TYPE_BYTE)
    gg.getResults(gg.getResultsCount())
    gg.editAll("h 01 00 00 00 FC A9 71 3D", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("SPEED 50X ON")
  else
    gg.searchNumber("h 01 00 00 00 FC A9 71 3D", gg.TYPE_BYTE)
    gg.getResults(gg.getResultsCount())
    gg.editAll("h 01 00 00 00 02 2B 07 3D", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("SPEED 50X OFF")
  end
end

while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    REX()
  end
end

end
