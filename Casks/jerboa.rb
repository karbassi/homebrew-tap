cask "jerboa" do
  version "1.4.0-beta.2"
  sha256 "f176205abb73ebdd0d45c007508dc290889b37b2b0f5dac055829cc0560c9b8c"

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
