{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ripgrep
    fd
    emacs-all-the-icons-fonts
    nixfmt
    editorconfig-core-c
    fira-code
  ];

  home.sessionPath = [ "~/.emacs.d/bin" ];

  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [ epkgs.vterm ];
  };

  home.file.".doom.d".source = ./emacs/doom;
}
