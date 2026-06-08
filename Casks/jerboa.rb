cask "jerboa" do
  version "1.4.0-beta.4"
  sha256 "bd380a139d52d505f5496bb79aff6862697d249660e501ea35199222e3339f80"

  url "https://github.com/karbassi/jerboa/releases/download/v#{version}/Jerboa.zip"
  name "Jerboa"
  desc "Lightweight markdown viewer"
  homepage "https://github.com/karbassi/jerboa"

  depends_on macos: :sonoma

  app "Jerboa.app"
  binary "#{appdir}/Jerboa.app/Contents/MacOS/Jerboa", target: "jerboa"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/Jerboa.app"]
  end
end
