cask "debriddownloader" do
  version "1.7.4"
  sha256 "e6032796a32067f3da6f46966bf38b631ce9f2c53e3bccf29a51fbfa8bb51699"

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
