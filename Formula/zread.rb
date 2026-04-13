# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.2.6             - release version, e.g. 1.2.3
#   2a016da4f58428f31b03648ae286619cb1243f67e4396c165bf6db331f32ed90 - SHA-256 of zread-darwin-x86_64
#   8c1dbddf652e181c4c47951803422323c1867235bd14188eb8840329485e60f1 - SHA-256 of zread-darwin-arm64
#   28cd313f300024b280be4d64cc5224fa5f52d5c14060e71c0adbbd686fa277df  - SHA-256 of zread-linux-x86_64
#   95fb868bf5fe4dd2b1da70ff34a7aa0766fec2c51498075f64031dfeaf2a181e  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.2.6"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.6/zread-darwin-x86_64"
      sha256 "2a016da4f58428f31b03648ae286619cb1243f67e4396c165bf6db331f32ed90"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.6/zread-darwin-arm64"
      sha256 "8c1dbddf652e181c4c47951803422323c1867235bd14188eb8840329485e60f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.6/zread-linux-x86_64"
      sha256 "28cd313f300024b280be4d64cc5224fa5f52d5c14060e71c0adbbd686fa277df"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.6/zread-linux-aarch64"
      sha256 "95fb868bf5fe4dd2b1da70ff34a7aa0766fec2c51498075f64031dfeaf2a181e"
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
