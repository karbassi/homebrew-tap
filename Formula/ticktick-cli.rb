class TicktickCli < Formula
  desc "CLI for TickTick task management"
  homepage "https://github.com/karbassi/ticktick-cli"
  version "1.0.0-rc.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-macos-arm64.tar.gz"
      sha256 "750b33392b5d18e8f97076a4ad4ac6de903ac4652c8be9daa21ad8333d4b7f00"
    end
    on_intel do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-macos-x86_64.tar.gz"
      sha256 "607d019eba21e894f43e44923033b22abe7162e958a66206e448c752d9c7d212"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-linux-arm64.tar.gz"
      sha256 "63936d23d76f6386698f447903d9886ae635896693cf011574f8f12339333e63"
    end
    on_intel do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-linux-x86_64.tar.gz"
      sha256 "0094a4072e5cfd8fbc5b16ee642b3dfb64760068492f415e4cd804f52ae36b95"
    end
  end

  def install
    bin.install "ticktick-cli"
    generate_completions_from_executable(bin/"ticktick-cli", shell_parameter_format: :clap)
  end

  test do
    assert_match "ticktick-cli", shell_output("#{bin}/ticktick-cli --version")
  end
end
