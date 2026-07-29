{
  services.kanata = {

    enable = true;

    keyboards = {

      internalKeyboard = {

        devices = [
        ];

        extraDefCfg = "process-unmapped-keys yes";

        config = ''
          (defsrc
            grv 1  2  3  4  5  6  7  8  9  0  -  =    bspc
            tab  q  w  e  r  t  y  u  i  o  p  [  ]    ret
            caps  a  s  d  f  g  h  j  k  l  ;  '  \
            lsft < z  x  c  v  b  n  m  ,  .  /       rsft
            lctl  lmet  lalt    spc     ralt  rctl
          )

          (defvar
            tap-time 150
            hold-time 150
          )

          (defalias
            ;; base layer aliases
            grv  (tap-hold $tap-time $hold-time grv (layer-toggle layers))
            a    (tap-hold $tap-time $hold-time a ralt)
            s    (tap-hold $tap-time $hold-time s lmet)
            d    (tap-hold $tap-time $hold-time d lsft)
            f    (tap-hold $tap-time $hold-time f lctl)
            g    (tap-hold $tap-time $hold-time g lalt)
            h    (tap-hold $tap-time $hold-time h lalt)
            j    (tap-hold $tap-time $hold-time j rctl)
            k    (tap-hold $tap-time $hold-time k rsft)
            l    (tap-hold $tap-time $hold-time l rmet)
            ;    (tap-hold $tap-time $hold-time ; ralt)
            lalt (tap-hold $tap-time $hold-time bspc (layer-toggle sys))
            ralt (tap-hold $tap-time $hold-time ret (layer-toggle sys))
            spc  (tap-hold $tap-time $hold-time spc (layer-toggle symnum))
          )

          (deflayer base
            @grv 1  2  3  4  5  6  7  8  9  0  -  =   bspc
            tab   q  w  e  r  t  y  u  i  o  p  [  ]   ret
            esc    @a @s @d @f @g @h @j @k @l @; '  \
            lsft grv z  x  c  v  b  n  m  ,  .  /     rsft
            lctl  lmet @lalt  @spc     @ralt  rctl
          )

          (deflayer raw
            @grv 1  2  3  4  5  6  7  8  9  0  -  =   bspc
            tab   q  w  e  r  t  y  u  i  o  p  [  ]   ret
            caps   a  s  d  f  g  h  j  k  l  ;  '  \
            lsft <  z  x  c  v  b  n  m  ,  .  /      rsft
            lctl  lmet  lalt    spc     ralt  rctl
          )

          (defalias
            ;; sys layer aliases
            ◀◀  (tap-hold $tap-time $hold-time ◀◀ lmet)
            ▶⏸  (tap-hold $tap-time $hold-time ▶⏸ lsft)
            ▶▶  (tap-hold $tap-time $hold-time ▶▶ lctl)
            )

          (deflayer sys
            @grv 1  2  3  4  5  6  7  8  9  0  -  =   bspc
            tab   XX 🔇 🔉 🔊 🔆  ⇤  ⇟  ⇞  ⇥  XX XX XX ret
            esc    lalt @◀◀ @▶⏸ @▶▶ 🔅 ◀  ▼  ▲  ▶  XX XX  \
            lsft XX XX XX XX XX XX XX XX XX XX XX     rsft
            lctl  lmet  lalt    spc     ralt  rctl
          )

          (defalias
            ;; symnum layer aliases
            ;; tilde S-grv
            ;; ! S-1
            ;; @ S-2
            ;; & S-7
            ;; * S-8
            ;; S-4
            ;; | S-\
            ;; % S-5
            ;; ^ S-6
            $ (tap-hold $tap-time $hold-time S-4 lmet)
            lp (tap-hold $tap-time $hold-time S-9 lsft)
            rp (tap-hold $tap-time $hold-time S-0 lctl)
            \ (tap-hold $tap-time $hold-time \ lalt)
          )

          (deflayer symnum
            @grv f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 bspc
            S-grv S-1 S-2 [ ] S-7  -  7  8  9 S-8 [  ]   ret
            caps   S-3 @$ @lp @rp @\ 0  4  5  6  =  S-\ \
            lsft <  S-5 S-6 S-[ S-]  S-- +  1  2  3  \     rsft
            lctl  lmet  del    spc     tab  rctl
          )

          (defalias
            ;; layers layer aliases
            base (layer-switch base)
            raw  (layer-switch raw)
          )

          (deflayer layers
            grv @base @raw 3  4  5  6  7  8  9  0  -  =  bspc
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
