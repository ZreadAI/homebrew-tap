# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.2.9             - release version, e.g. 1.2.3
#   2c72365e9fa100b4e0201fe276fc36f29dc05cf5bb96de5b6b68f0e40606fc21 - SHA-256 of zread-darwin-x86_64
#   14bc766e42b9520f04b5247bd97c80daad2794ca4729af679440b11d9757698d - SHA-256 of zread-darwin-arm64
#   4bc6c2d87d4027cfa20d547839f0eae21cc22cec9dc98c6c1dbd0ba906c3f59a  - SHA-256 of zread-linux-x86_64
#   e3d4270534949a75763114a44295465db5f4ac6ab023ac2cd4a9383c3003ff0f  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.2.9"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.9/zread-darwin-x86_64"
      sha256 "2c72365e9fa100b4e0201fe276fc36f29dc05cf5bb96de5b6b68f0e40606fc21"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.9/zread-darwin-arm64"
      sha256 "14bc766e42b9520f04b5247bd97c80daad2794ca4729af679440b11d9757698d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.9/zread-linux-x86_64"
      sha256 "4bc6c2d87d4027cfa20d547839f0eae21cc22cec9dc98c6c1dbd0ba906c3f59a"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.9/zread-linux-aarch64"
      sha256 "e3d4270534949a75763114a44295465db5f4ac6ab023ac2cd4a9383c3003ff0f"
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
