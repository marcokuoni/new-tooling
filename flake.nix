
{
  description = "Marp CLI shell with ´nix develop´";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.default = let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in pkgs.mkShell {
      buildInputs = [
        pkgs.nodejs
        pkgs.yarn
      ];

      shellHook = ''
        if [ ! -d node_modules ]; then
          echo "Installing Marp CLI..."
          yarn global add @marp-team/marp-cli
        fi

        export PATH="$HOME/.yarn/bin:$PATH"
      '';
    };
  };
}
