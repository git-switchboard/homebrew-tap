class GitSwitchboard < Formula
  desc "Interactive TUI for browsing and checking out git branches"
  homepage "https://github.com/git-switchboard/git-switchboard"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.3.0/git-switchboard-darwin-arm64"
      sha256 "394292731daf7ee012c9bee92697b7f962af2fba31cf55526b13c77ff2890222"
    else
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.3.0/git-switchboard-darwin-x64"
      sha256 "43b81b7aba0808571a98d5a7270433ee25609aa8a83ea542765739cf537cbe02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.3.0/git-switchboard-linux-arm64"
      sha256 "51d03eb9b0fa7c936c6c5c37a80cdd325982316d14cffe6a151addcaeb1f6dab"
    else
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.3.0/git-switchboard-linux-x64"
      sha256 "80c7278ca5ad4cfb49e4c54d5e5a2836c27aa52edeb7430a702ba5990512ccc8"
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
