{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (python314.withPackages (
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
        # tensorflow
        # keras
      ]
    ))
  ];
}
