let nixpkgs = import ./nixpkgs.nix;

in with nixpkgs; nixpkgs.mkShell {
	name = "quantum";
	packages = [ azure-cli ];
	venvDir = "./.venv";
	buildInputs = 
		[ python39
		  python39Packages.pip
    	  python39Packages.virtualenv
		  dotnetCorePackages.sdk_6_0
		  git
		  nixfmt
		  which
		  nano
		  vim
		];
	shellHook = ''
		python -m venv .venv
		source .venv/bin/activate
	'';
}

