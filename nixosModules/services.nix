{ services, ... } : 
{
  services = {
    syncthing = {
      enable = true;
      user = "marvin";
      dataDir = "/home/marvin/Documents";
      configDir = "/home/marvin/Documents/.config/syncthing";
    };
  };
}
