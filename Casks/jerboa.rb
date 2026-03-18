cask "jerboa" do
  version "1.2.0"
  sha256 "054379624a5fbde41a232711b9d6d327688bfb76e2557f12738024836a00b723"

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
