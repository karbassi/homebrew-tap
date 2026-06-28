cask "debriddownloader" do
  version "1.6.4"
  sha256 "056c5cfdf82b48c733b55e2d206c307141b8e118ec7ca75fcca9a2aaffbe7e87"

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
