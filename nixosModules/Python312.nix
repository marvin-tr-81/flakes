{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (python312.withPackages (ps: with ps; [
      numpy
      scipy
      jupyterlab
      pandas
      statsmodels
      scikitlearn
    ]))
  ];
}
