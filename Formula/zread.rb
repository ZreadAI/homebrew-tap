# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.2.4             - release version, e.g. 1.2.3
#   2d1612272217fab8da068b9b57faf9d3fde57425fb8f5247439f471b5ebc8c89 - SHA-256 of zread-darwin-x86_64
#   933d4dbc79bc62e206ca25e6b4c3a5eee8de8b6dfdc240e50d6deaa65de91672 - SHA-256 of zread-darwin-arm64
#   600b0b4e9d2dc0f40dbafb546bcb132b781d628d06e2ddb5f39cb547883e6021  - SHA-256 of zread-linux-x86_64
#   0b14c30a28d5d899ac705cd6b10fce9b32ba86d524b3eb4a8967669c285879a5  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.2.4"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.4/zread-darwin-x86_64"
      sha256 "2d1612272217fab8da068b9b57faf9d3fde57425fb8f5247439f471b5ebc8c89"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.4/zread-darwin-arm64"
      sha256 "933d4dbc79bc62e206ca25e6b4c3a5eee8de8b6dfdc240e50d6deaa65de91672"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.4/zread-linux-x86_64"
      sha256 "600b0b4e9d2dc0f40dbafb546bcb132b781d628d06e2ddb5f39cb547883e6021"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.4/zread-linux-aarch64"
      sha256 "0b14c30a28d5d899ac705cd6b10fce9b32ba86d524b3eb4a8967669c285879a5"
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
