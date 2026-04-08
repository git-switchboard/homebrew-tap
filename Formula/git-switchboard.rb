class GitSwitchboard < Formula
  desc "Interactive TUI for browsing and checking out git branches"
  homepage "https://github.com/git-switchboard/git-switchboard"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.1.0/git-switchboard-darwin-arm64"
      sha256 "124b5fb8b13b153407c23fc640391b4a0d8d0f11c738730625356895cf0cc0a9"
    else
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.1.0/git-switchboard-darwin-x64"
      sha256 "b34cc8e6a0b29113a1a5b7132ab8bbfd296847b3bdcd2aa9d6f1d7f6e0ba149a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.1.0/git-switchboard-linux-arm64"
      sha256 "167ea9840e4af331e4a43f99bc6cadacb127bfe097e8bab1df76be8159c2ebbd"
    else
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.1.0/git-switchboard-linux-x64"
      sha256 "73aff12b6d67a9f91bc6c2951c09d496838da4ba857457893ddcd0ae54363e86"
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
