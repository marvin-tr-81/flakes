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
            tap-time 150
            hold-time 150
          )

          (defalias
            ;; base layer aliases
            grv  (tap-hold $tap-time $hold-time grv (layer-toggle layers))
            a    (tap-hold $tap-time $hold-time a lalt)
            s    (tap-hold $tap-time $hold-time s ralt)
            d    (tap-hold $tap-time $hold-time d lsft)
            f    (tap-hold $tap-time $hold-time f lctl)
            j    (tap-hold $tap-time $hold-time j rctl)
            k    (tap-hold $tap-time $hold-time k rsft)
            l    (tap-hold $tap-time $hold-time l ralt)
            ;    (tap-hold $tap-time $hold-time ; lalt)
            spc  (tap-hold $tap-time $hold-time spc lmet)
            lctl (layer-toggle nmpd)
            lalt (tap-hold $tap-time $hold-time bspc (layer-toggle sys))
            ralt (tap-hold $tap-time $hold-time ret (layer-toggle sys))
          )

          (deflayer base
            esc f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 del
            @grv 1  2  3  4  5  6  7  8  9  0  -  =  bspc
            tab  q  w  e  r  t  y  u  i  o  p  [  ]  ret
            esc   @a @s @d @f g  h  @j @k @l @; '  \
            lsft ` z  x  c  v  b  n  m  ,  .  /     rsft
            @lctl lmet @lalt   @spc    @ralt  rctl
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
            ◀◀  (tap-hold $tap-time $hold-time ◀◀ lalt)
            ▶⏸  (tap-hold $tap-time $hold-time ▶⏸ lsft)
            ▶▶  (tap-hold $tap-time $hold-time ▶▶ lctl)
            )

          (deflayer sys
            esc f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 del
            @grv 1  2  3  4  5  6  7  8  9  0  -  =  bspc
            tab  XX 🔇 🔉 🔊 🔆  ⇤  ⇟  ⇞  ⇥  XX XX XX  ret
            esc   lalt @◀◀ @▶⏸ @▶▶ 🔅  ◀  ▼  ▲  ▶  XX XX  \
            lsft XX XX XX XX XX XX XX XX XX XX XX    rsft
            lctl  lmet  lalt    spc     ralt  rctl
          )

          (deflayer nmpd
            ;; numpad layer
            esc f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 NumLock
            @grv 1  2  3  4  5 XX kp7 kp8 kp9 kp/ XX   XX  bspc
            tab  q  w  e  r  t  XX kp4 kp5 kp6 kp* NumpadEqual XX kprt 
            caps  a  s  d  f  g  XX kp1 kp2 kp3 kp- XX   XX
            lsft < z  x  c  v  b  XX kp0 kp, kp. kp+      rsft
            lctl  lmet  bspc    spc     ret  rctl
          )

          (defalias
            ;; layers layer aliases
            base (layer-switch base)
            raw  (layer-switch raw)
            nmpd (layer-switch nmpd)
          )

          (deflayer layers
            esc f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 del
            grv @base @raw @nmpd 4  5  6  7  8  9  0  -  =  bspc
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
