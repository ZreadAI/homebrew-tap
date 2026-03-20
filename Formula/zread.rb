# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.1.3             - release version, e.g. 1.2.3
#   a70b344962f0ee2520ab56ea8d02c733258aea86df56e8ebfdfd8723f86be2e1 - SHA-256 of zread-darwin-x86_64
#   ea05a1ab35b833ae9c069211e8bbb5184ae63b79d7b148fb11f036b1792d512a - SHA-256 of zread-darwin-arm64
#   695f4fdd6d730c92ad59d50aa41252d30f115f475bf77d01567d2bf2734ca754  - SHA-256 of zread-linux-x86_64
#   2ecbe295d196e1275213a3cd7869cea6862a321591534f0c30de588be8a6de4b  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.3/zread-darwin-x86_64"
      sha256 "a70b344962f0ee2520ab56ea8d02c733258aea86df56e8ebfdfd8723f86be2e1"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.3/zread-darwin-arm64"
      sha256 "ea05a1ab35b833ae9c069211e8bbb5184ae63b79d7b148fb11f036b1792d512a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.3/zread-linux-x86_64"
      sha256 "695f4fdd6d730c92ad59d50aa41252d30f115f475bf77d01567d2bf2734ca754"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.3/zread-linux-aarch64"
      sha256 "2ecbe295d196e1275213a3cd7869cea6862a321591534f0c30de588be8a6de4b"
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
