{ system, pkgs, ... }:

{
  environment.variables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    GOPATH = "~/computing/go";
  };

  programs = {
    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableSyntaxHighlighting = true;
      shellAliases = { update = "sudo nixos-rebuild switch"; };
      history = { size = 10000; };
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "docker"
          "docker-compose"
          "ripgrep"
          "thefuck"
          "z"
          "ipfs"
          "history"
          "deno"
        ];
        theme = "af-magic";
      };
    };
    git = {
      enable = true;
      userName = "Dusty Quince";
      userEmail = "dustyquince@protonmail.com";
    };
    tmux = {
      enable = true;
      shortcut = "a";
      extraConfig = ''
        # Mouse works as expected
        set-option -g mouse on
        # easy-to-remember split pane commands
        bind | split-window -h -c "#{pane_current_path}"
        bind - split-window -v -c "#{pane_current_path}"
        bind c new-window -c "#{pane_current_path}"
      '';
    };
  };
}
