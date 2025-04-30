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
           caps <
           a s d f
           j k l ;
           w o e i
          )

          (defvar
           tap-time 150
           hold-time 200
          )

          (defalias
           caps esc
           < `
           a (tap-hold $tap-time $hold-time a lalt)
           s (tap-hold $tap-time $hold-time s lmet)
           d (tap-hold $tap-time $hold-time d lsft)
           f (tap-hold $tap-time $hold-time f lctl)
           j (tap-hold $tap-time $hold-time j rctl)
           k (tap-hold $tap-time $hold-time k rsft)
           l (tap-hold $tap-time $hold-time l rmet)
           ; (tap-hold $tap-time $hold-time ; lalt)
           w (tap-hold $tap-time $hold-time w ralt)
           o (tap-hold $tap-time $hold-time o ralt)
           e (tap-hold $tap-time $hold-time e (multi lsft ralt))
           i (tap-hold $tap-time $hold-time i (multi rsft ralt))
          )

          (deflayer base
           @caps @< @a  @s  @d  @f  @j  @k  @l  @; @w @o @e @i
          )
        '';

      };
    };
  };
}
