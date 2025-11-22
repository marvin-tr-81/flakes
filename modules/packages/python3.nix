{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (python313.withPackages (
      ps: with ps; [
        tkinter
        numpy
        scipy
        jupyterlab
        pandas
        statsmodels
        scikit-learn
        matplotlib
        seaborn
      ]
    ))
  ];
}
