{ pkgs }: {
    deps = [
        pkgs.mpi
        pkgs.gfortran
        # This ls available on nix is for XL fortran 
        # pkgs.fortran-language-server
    ];
}