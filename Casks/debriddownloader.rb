cask "debriddownloader" do
  version "1.7.3"
  sha256 "16b748b900b2c03dfc54530d2c1824b56ae3d4344da5d5bd556e3b600651ee7b"

  url "https://github.com/CasaVargas/DebridDownloader/releases/download/v#{version}/DebridDownloader_#{version}_aarch64.dmg"
  name "DebridDownloader"
  desc "Real-Debrid download manager with Jellyfin/Plex auto-organize"
  homepage "https://github.com/CasaVargas/DebridDownloader"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DebridDownloader.app"

  zap trash: [
    "~/Library/Application Support/com.casavargas.debriddownloader",
    "~/Library/Caches/com.casavargas.debriddownloader",
    "~/Library/Preferences/com.casavargas.debriddownloader.plist",
  ]
end
