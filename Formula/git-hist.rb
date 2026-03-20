class GitHist < Formula
  desc "Quickly browse the git history of files on a terminal"
  homepage "https://github.com/karbassi/git-hist"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/git-hist/releases/download/v#{version}/git-hist-macos-arm64.tar.gz"
      sha256 "600ee7a864b2108849d4d82d73cbf0aa1f4d3c68fe850da55097dc319da24f08"
    end
    on_intel do
      url "https://github.com/karbassi/git-hist/releases/download/v#{version}/git-hist-macos-x86_64.tar.gz"
      sha256 "15d889c2371e8dcb35d2d2e01f26601e452eebae0bdc5bbabec01e3ef326d5f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/karbassi/git-hist/releases/download/v#{version}/git-hist-linux-x86_64.tar.gz"
      sha256 "4a8efeb2e3297b49338b91534d8789652f70979c11454517a1f43a22e4dc93f8"
    end
  end

  def install
    bin.install "git-hist"
  end

  test do
    assert_predicate bin/"git-hist", :executable?
  end
end
