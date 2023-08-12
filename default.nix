{ lib, stdenv, fetchFromGitHub, meson, ninja }:

stdenv.mkDerivation rec {
  pname = "lyra";
  version = "1.6.1";

  src = ./.;

  nativeBuildInputs = [ meson ninja ];

  meta = with lib; {
    homepage = "https://github.com/bfgroup/Lyra";
    description = "A simple to use, composable, command line parser for C++ 11 and beyond";
    platforms = platforms.unix;
    license = licenses.boost;
    maintainers = with maintainers; [ davidtwco ];
  };
}
