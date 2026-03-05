cask "jerboa" do
  version "1.1.0"
  sha256 "219b991099b372e38b94d7e62dd2710ad18f1a390c722b87432125b30fd2d3a7"

  url "https://github.com/karbassi/jerboa/releases/download/v#{version}/Jerboa.zip"
  name "Jerboa"
  desc "Lightweight markdown viewer for macOS"
  homepage "https://github.com/karbassi/jerboa"

  depends_on macos: ">= :sonoma"

  app "Jerboa.app"
  binary "#{appdir}/Jerboa.app/Contents/MacOS/Jerboa", target: "jerboa"
end
