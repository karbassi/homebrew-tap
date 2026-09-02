class Airconnect < Formula
  desc "Use AirPlay to stream to UPnP/Sonos & Chromecast devices"
  homepage "https://github.com/philippe44/AirConnect"
  url "https://github.com/philippe44/AirConnect/releases/download/1.11.2/AirConnect-1.11.2.zip"
  sha256 "bce0fe0d973786cc84d4a24cc0e375eba713df286f24ec5c329795fa24589df8"
  license "MIT"
  version "1.11.2"

  depends_on :macos

  livecheck do
    url :homepage
    strategy :github_latest
  end

  def install
    arch = Hardware::CPU.arm? ? "arm64" : "x86_64"
    bin.install "airupnp-macos-#{arch}-static" => "airupnp"
    bin.install "aircast-macos-#{arch}-static" => "aircast"

    # Strip Gatekeeper quarantine so the unsigned binaries run headless.
    [bin/"airupnp", bin/"aircast"].each do |b|
      quiet_system "xattr", "-d", "com.apple.quarantine", b.to_s
    end
  end

  # `brew services start airconnect` runs the UPnP/Sonos bridge.
  # -Z keeps it in the foreground for launchd; -l 1000:2000 is the
  # latency the AirConnect docs require for Sonos & Heos players.
  service do
    run [opt_bin/"airupnp", "-Z", "-l", "1000:2000"]
    keep_alive true
    log_path var/"log/airupnp.log"
    error_log_path var/"log/airupnp.log"
    process_type :background
  end

  test do
    assert_predicate bin/"airupnp", :exist?
    assert_predicate bin/"aircast", :exist?
  end
end
