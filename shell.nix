{ pkgs ? import <nixpkgs> {
   config.allowUnfreePredicate = pkg: builtins.elem (pkgs.lib.getName pkg) [ "bws" ];
  }
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    ansible
    python3
    python3Packages.pip
    bws
    git
  ];

  ANSIBLE_CONFIG = "ansible.cfg";
  BWS_CONFIG_FILE = ".bws_config";
}
