{ mkShell, meson, ninja }:
mkShell {
  nativeBuildInputs = [ meson ninja ];
}
