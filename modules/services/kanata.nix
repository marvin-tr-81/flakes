{
  services.kanata = {

    enable = true;

    keyboards = {

      internalKeyboard = {

        devices = [
          "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
        ];

        extraDefCfg = "process-unmapped-keys yes";

        config = ''
          (defsrc
            esc f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 del
            grv 1  2  3  4  5  6  7  8  9  0  -  =  bspc
            tab  q  w  e  r  t  y  u  i  o  p  [  ]  ret
            caps  a  s  d  f  g  h  j  k  l  ;  '  \
            lsft < z  x  c  v  b  n  m  ,  .  /     rsft
            lctl  lmet  lalt    spc     ralt  rctl
          )

          (defvar
            tap-time 180
            hold-time 200
          )

          (defalias
            ;; base layer aliases
            grv  (tap-hold $tap-time $hold-time grv (layer-toggle layers))
            caps (tap-hold $tap-time $hold-time esc lalt)
            a    (tap-hold $tap-time $hold-time a ralt)
            s    (tap-hold $tap-time $hold-time s lmet)
            d    (tap-hold $tap-time $hold-time d lsft)
            f    (tap-hold $tap-time $hold-time f lctl)
            j    (tap-hold $tap-time $hold-time j rctl)
            k    (tap-hold $tap-time $hold-time k rsft)
            l    (tap-hold $tap-time $hold-time l rmet)
            ;    (tap-hold $tap-time $hold-time ; ralt)
            '    (tap-hold $tap-time $hold-time ' lalt)
            spc  (tap-hold $tap-time $hold-time spc (layer-toggle sys))
          )

          (deflayer base
            esc f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 del
            @grv 1  2  3  4  5  6  7  8  9  0  -  =  bspc
            tab  q  w  e  r  t  y  u  i  o  p  [  ]  ret
            @caps @a @s @d @f g  h  @j @k @l @; @' \
            lsft ` z  x  c  v  b  n  m  ,  .  /     rsft
            lctl  lmet bspc   @spc    ret  rctl
          )

          (deflayer raw
            esc f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 del
            @grv 1  2  3  4  5  6  7  8  9  0  -  =  bspc
            tab  q  w  e  r  t  y  u  i  o  p  [  ]  ret
            caps  a  s  d  f  g  h  j  k  l  ;  '  \
            lsft < z  x  c  v  b  n  m  ,  .  /     rsft
            lctl  lmet  lalt    spc     ralt  rctl
          )

          (defalias
            ;; sys layer aliases
            ◀◀  (tap-hold $tap-time $hold-time ◀◀ lmet)
            ▶⏸  (tap-hold $tap-time $hold-time ▶⏸ lsft)
            ▶▶  (tap-hold $tap-time $hold-time ▶▶ lctl)
            )

          (deflayer sys
            esc f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 del
            @grv 1  2  3  4  5  6  7  8  9  0  -  =  bspc
            tab  q  🔇 🔉 🔊 🔆  ⇤  ⇟  ⇞  ⇥  p  [  ]  ret
            @caps @a @◀◀ @▶⏸ @▶▶ 🔅  ◀  ▼  ▲  ▶   ;  '  \
            lsft < z  x  c  v  b  n  m  ,  .  /     rsft
            lctl  lmet  lalt    spc     ralt  rctl
          )

          (defalias
            ;; layers layer aliases
            base (layer-switch base)
            raw  (layer-switch raw)
          )

          (deflayer layers
            esc f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 del
            grv @base @raw  3  4  5  6  7  8  9  0  -  =  bspc
            tab  q  w  e  r  t  y  u  i  o  p  [  ]  ret
            caps  a  s  d  f  g  h  j  k  l  ;  '  \
            lsft < z  x  c  v  b  n  m  ,  .  /     rsft
            lctl  lmet  lalt    spc     ralt  rctl
          )

        '';

      };
    };
  };
}
