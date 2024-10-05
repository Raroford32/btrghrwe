{pkgs}: {
  deps = [
    pkgs.xvfb-run
    pkgs.wine
    pkgs.postgresql
  ];
}
