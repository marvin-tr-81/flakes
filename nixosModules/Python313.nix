{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (python313.withPackages (
      ps: with ps; [
        numpy
        scipy
        jupyterlab
        pandas
        statsmodels
        scikitlearn
      ]
    ))
  ];
}
