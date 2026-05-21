class GitSwitchboard < Formula
  desc "Interactive TUI for browsing and checking out git branches"
  homepage "https://github.com/git-switchboard/git-switchboard"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.3.1/git-switchboard-darwin-arm64"
      sha256 "e2682bae7723e394cbb8147f10452deabbfa21205664b53a9fbba818bd956966"
    else
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.3.1/git-switchboard-darwin-x64"
      sha256 "c2d2f03001189b53840a3229344852ae0c8376e13d01a93bb69b696935b6d3f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.3.1/git-switchboard-linux-arm64"
      sha256 "a6cebc67898c5e974a1393fcf41914f5f3c73056a32cfc52cbac4d035b9994b3"
    else
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.3.1/git-switchboard-linux-x64"
      sha256 "6c57537d3646a7190b58f8e2e3a5ffd0893031a8d626a0c61b6878ba786c8cb7"
    end
  end

  def install
    binary = Dir["git-switchboard*"].first
    bin.install binary => "git-switchboard"
  end

  test do
    assert_match "git-switchboard", shell_output("#{bin}/git-switchboard --help")
  end
end
