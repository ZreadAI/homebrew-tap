# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.1.6             - release version, e.g. 1.2.3
#   ab725d40986ec7ff17e66d65a041f6e88ef6e10a9402491f40c2ec4fab39e807 - SHA-256 of zread-darwin-x86_64
#   52f71081a9c176ba63e7333b143983bdcda342518d6b15a25e8dc356accee9db - SHA-256 of zread-darwin-arm64
#   b5fef4fb796591d3c286f6b2f7209a7e34abb6b6f4a0931a979642d9c745a58f  - SHA-256 of zread-linux-x86_64
#   e9d4f3c70d9f0c55bb5e3c1b277480226bacbde4fc8661706161011122b29d9a  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.1.6"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.6/zread-darwin-x86_64"
      sha256 "ab725d40986ec7ff17e66d65a041f6e88ef6e10a9402491f40c2ec4fab39e807"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.6/zread-darwin-arm64"
      sha256 "52f71081a9c176ba63e7333b143983bdcda342518d6b15a25e8dc356accee9db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.6/zread-linux-x86_64"
      sha256 "b5fef4fb796591d3c286f6b2f7209a7e34abb6b6f4a0931a979642d9c745a58f"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.6/zread-linux-aarch64"
      sha256 "e9d4f3c70d9f0c55bb5e3c1b277480226bacbde4fc8661706161011122b29d9a"
    end
  end

  def install
    binary = Dir["zread-darwin-*", "zread-linux-*"].first
    bin.install binary => "zread"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zread version")
  end
end
