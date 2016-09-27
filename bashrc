if [ _$TERM = "_gno-console" ]; then
  stty kill ^X # default line kill char is ^U (right arrow)

  bind Control-H:backward-char
  bind Control-U:forward-char
  bind Control-J:next-history
  bind Control-K:previous-history
  bind Control-X:unix-line-discard
fi

if [ _$TERM = "_gsos-console" ]; then
  stty kill ^X # default line kill char is ^U (right arrow)
  stty oxtabs  # expand tabs to spaces
  tput init    # make sure CR doesn't also LF.

  bind Control-H:backward-char
  bind Control-U:forward-char
  bind Control-J:next-history
  bind Control-K:previous-history
  bind Control-X:unix-line-discard
fi


if [ _$TERM = "_proterm-special" ]; then
  stty kill ^X # default line kill char is ^U (right arrow)

  bind Control-H:backward-char
  bind Control-U:forward-char
  bind Control-J:next-history
  bind Control-K:previous-history
  bind Control-X:unix-line-discard
fi

if [ _$TERM = "_appleIIe" ]; then
  stty kill ^X # default line kill char is ^U (right arrow)

  bind Control-H:backward-char
  bind Control-U:forward-char
  bind Control-J:next-history
  bind Control-K:previous-history
  bind Control-X:unix-line-discard
fi
