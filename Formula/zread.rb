# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.2.11             - release version, e.g. 1.2.3
#   91be82f7c661e1ba97e04a03dfcb1df7d8e8303e9701e89251b6b092e18a3c75 - SHA-256 of zread-darwin-x86_64
#   ec7242f59c24c889b5a5dfd4d6d1af1b3d85bf41ab41c488500383dab094c759 - SHA-256 of zread-darwin-arm64
#   281846777c2a43ded34f15be71afbb12d2e38d361ca0651c219713cea3e9740a  - SHA-256 of zread-linux-x86_64
#   8924e6e216b010052ef8421a6dd5b489f34be1b2e8436f4d0c091bf23650cd1b  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.2.11"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.11/zread-darwin-x86_64"
      sha256 "91be82f7c661e1ba97e04a03dfcb1df7d8e8303e9701e89251b6b092e18a3c75"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.11/zread-darwin-arm64"
      sha256 "ec7242f59c24c889b5a5dfd4d6d1af1b3d85bf41ab41c488500383dab094c759"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.11/zread-linux-x86_64"
      sha256 "281846777c2a43ded34f15be71afbb12d2e38d361ca0651c219713cea3e9740a"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.11/zread-linux-aarch64"
      sha256 "8924e6e216b010052ef8421a6dd5b489f34be1b2e8436f4d0c091bf23650cd1b"
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
