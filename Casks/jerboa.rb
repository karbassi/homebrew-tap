cask "jerboa" do
  version "1.4.0-beta.1"
  sha256 "fc90b9e9ac05c293336ece2a7b9a4cc59f02bb967e4c044048a53cb32a5dd1c9"

  url "https://github.com/karbassi/jerboa/releases/download/v#{version}/Jerboa.zip"
  name "Jerboa"
  desc "Lightweight markdown viewer for macOS"
  homepage "https://github.com/karbassi/jerboa"

  depends_on macos: ">= :sonoma"

  app "Jerboa.app"
  binary "#{appdir}/Jerboa.app/Contents/MacOS/Jerboa", target: "jerboa"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/Jerboa.app"]
  end
end
