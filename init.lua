local function keyCode(key, modifiers)
  modifiers = modifiers or {}

  return function()
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
      hs.timer.usleep(1000)
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
  end
end

hs.hotkey.bind({"cmd"}, 'j', keyCode('left') ,  nil,   keyCode('left'))
hs.hotkey.bind({"cmd"}, 'k', keyCode('down') ,  nil,   keyCode('down') )
hs.hotkey.bind({"cmd"}, 'i', keyCode('up')   ,  nil,   keyCode('up') )
hs.hotkey.bind({"cmd"}, 'l', keyCode('right'),  nil,   keyCode('right') )

hs.hotkey.bind({"cmd", "shift"}, 'j', keyCode('left', {"shift"}) ,  nil,   keyCode('left', {"shift"}))
hs.hotkey.bind({"cmd", "shift"}, 'k', keyCode('down', {"shift"}) ,  nil,   keyCode('down', {"shift"}) )
hs.hotkey.bind({"cmd", "shift"}, 'i', keyCode('up', {"shift"})   ,  nil,   keyCode('up', {"shift"}) )
hs.hotkey.bind({"cmd", "shift"}, 'l', keyCode('right', {"shift"}),  nil,   keyCode('right', {"shift"}) )

hs.hotkey.bind({"cmd"}, 'h', keyCode('left', {'cmd'}, nil, keyCode('left', {'cmd'})))
hs.hotkey.bind({"cmd"}, ';', keyCode('right', {'cmd'}, nil, keyCode('right', {'cmd'})))
hs.hotkey.bind({"cmd"}, 'u', keyCode('pageup', nil, keyCode('pageup')))
hs.hotkey.bind({"cmd"}, 'o', keyCode('pagedown', nil, keyCode('pagedown')))

hs.hotkey.bind({"cmd", "shift"}, 'h', keyCode('left', {'cmd', "shift"}), nil, keyCode('left', {'cmd', 'shift'}))
hs.hotkey.bind({"cmd", "shift"}, ';', keyCode('right', {'cmd', "shift"}), nil, keyCode('right', {'cmd', 'shift'}))
hs.hotkey.bind({"cmd", "shift"}, 'u', keyCode('pageup', {"shift"}), nil, keyCode('pageup', {'shift'}))
hs.hotkey.bind({"cmd", "shift"}, 'o', keyCode('pagedown', {"shift"}), nil, keyCode('pagedown', {'shift'}))

