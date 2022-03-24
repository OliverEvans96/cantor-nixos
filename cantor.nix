# https://www.reddit.com/r/NixOS/comments/tl4hm7/cantor_on_nixos/
{ stdenv,
  libspectre,
  libsForQt5,
  hicolor-icon-theme,
  libqalculate,
  extra-cmake-modules,
  python,
  luajit,
  R,
  shared-mime-info,
  cmake,
  fetchurl,
  callPackage,
}:
let
  analitza = callPackage ./analitza.nix {};
  version = "21.12.2";
in
stdenv.mkDerivation {
  pname = "cantor";
  version = version;

  src = fetchurl {
    url = "https://download.kde.org/stable/release-service/${version}/src/cantor-${version}.tar.xz";
    sha256 = "e85c356bf91896f56a4759270e45c202dd956a557b252772f18338fadaf6086f";
  };

  nativeBuildInputs = [
    extra-cmake-modules
    shared-mime-info
    libsForQt5.qt5.wrapQtAppsHook
    python
    luajit
    R
  ];
  buildInputs = [
    analitza
    libspectre
    libqalculate
    libsForQt5.kpty
    libsForQt5.ktexteditor
    libsForQt5.knewstuff
    libsForQt5.poppler
    libsForQt5.qt5.qtxmlpatterns
    libsForQt5.qt5.qtwebengine
    hicolor-icon-theme
  ];
}
