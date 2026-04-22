# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.2.10             - release version, e.g. 1.2.3
#   6ebf63154560e44bcd98f9d03a21e0d34113b458aec574b81a062602e05cef41 - SHA-256 of zread-darwin-x86_64
#   c02e43185624acc67ffedc18fec845e77120d28939f0e4c7a7bb7f7e714aa83a - SHA-256 of zread-darwin-arm64
#   c4973102a69403202a0c3aef2be9ceb266a80035e7dce3cd1fa22126e2f72d05  - SHA-256 of zread-linux-x86_64
#   2aa83341a5c431c8cf9deccb95205d4480ac5c175eddd98b9ba33cc256eab8f2  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.2.10"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.10/zread-darwin-x86_64"
      sha256 "6ebf63154560e44bcd98f9d03a21e0d34113b458aec574b81a062602e05cef41"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.10/zread-darwin-arm64"
      sha256 "c02e43185624acc67ffedc18fec845e77120d28939f0e4c7a7bb7f7e714aa83a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.10/zread-linux-x86_64"
      sha256 "c4973102a69403202a0c3aef2be9ceb266a80035e7dce3cd1fa22126e2f72d05"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.10/zread-linux-aarch64"
      sha256 "2aa83341a5c431c8cf9deccb95205d4480ac5c175eddd98b9ba33cc256eab8f2"
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
