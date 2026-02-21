cask "jerboa" do
  version "1.0.0"
  sha256 "43433e4c00362355be651595c5338885aa747498580160ec98b767c5eb1603ce"

  url "https://github.com/karbassi/jerboa/releases/download/v#{version}/Jerboa.zip"
  name "Jerboa"
  desc "Lightweight markdown viewer for macOS"
  homepage "https://github.com/karbassi/jerboa"

  depends_on macos: ">= :sonoma"

  app "Jerboa.app"
  binary "#{appdir}/Jerboa.app/Contents/MacOS/Jerboa", target: "jerboa"
end
