cask "nuvio" do
  version "0.1.9-alpha"

  on_arm do
    sha256 "6cbdc734454c2171a02433c82b1b121ddaf6bd62b537d56e94b932d47c1b8dae"

    url "https://github.com/NuvioMedia/NuvioDesktop/releases/download/#{version}/Nuvio-macOS-arm64-#{version}.dmg"
  end
  on_intel do
    sha256 "50bc1a42e0e7c851eedc96de92e934582528e1290ea25f87f18c6b12de6dc0f5"

    url "https://github.com/NuvioMedia/NuvioDesktop/releases/download/#{version}/Nuvio-macOS-x86_64-#{version}.dmg"
  end

  name "Nuvio"
  desc "Media streaming desktop app"
  homepage "https://nuvio.tv/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Nuvio.app"

  zap trash: [
    "~/Library/Application Support/Nuvio",
    "~/Library/Caches/Nuvio",
    "~/Library/Preferences/tv.nuvio.plist",
  ]
end
