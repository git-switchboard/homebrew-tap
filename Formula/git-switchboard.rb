class GitSwitchboard < Formula
  desc "Interactive TUI for browsing and checking out git branches"
  homepage "https://github.com/git-switchboard/git-switchboard"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/git-switchboard/git-switchboard/releases/download/git-switchboard%400.0.2/git-switchboard-darwin-arm64"
      sha256 "e08ba16cc38354c0a8e8f10d57f39bef7144246a30c86759fd5a5ae0ccc8e5a0"
    else
      url "https://github.com/git-switchboard/git-switchboard/releases/download/git-switchboard%400.0.2/git-switchboard-darwin-x64"
      sha256 "af3596e09f500766d2f0855b952d5926f9d4306b6d71a2d1cdd6723e305e6a01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/git-switchboard/git-switchboard/releases/download/git-switchboard%400.0.2/git-switchboard-linux-arm64"
      sha256 "d1dea9a91beb8d2c781fcfc02ef76811012e6c491a6d47e4617aa26d39405720"
    else
      url "https://github.com/git-switchboard/git-switchboard/releases/download/git-switchboard%400.0.2/git-switchboard-linux-x64"
      sha256 "0b79faf8f69c73258d73d6513019747eb078a2682b006efd2848c8fd30cc043e"
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
