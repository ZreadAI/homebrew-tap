# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.1.2             - release version, e.g. 1.2.3
#   4946303a3b83017857de6a48b924a8ccb5d89a1788453ecbb59116f7ad5bc5d8 - SHA-256 of zread-darwin-x86_64
#   27ad0d6a2798f556c2a6f57f8b75e05370d28ebab7d219f46bb0abc9e67b7f91 - SHA-256 of zread-darwin-arm64
#   699389943471f3a66a07add58dd774071cdbb251b117edf58f27e24b6c4cad9f  - SHA-256 of zread-linux-x86_64
#   6274eebbfac82ed2a10febf57b34e94f649b8cba5c5f9cb0357c37f9eaac9e4b  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "CLI tool for generating documentation from code"
  homepage "https://zread.ai"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.2/zread-darwin-x86_64"
      sha256 "4946303a3b83017857de6a48b924a8ccb5d89a1788453ecbb59116f7ad5bc5d8"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.2/zread-darwin-arm64"
      sha256 "27ad0d6a2798f556c2a6f57f8b75e05370d28ebab7d219f46bb0abc9e67b7f91"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.2/zread-linux-x86_64"
      sha256 "699389943471f3a66a07add58dd774071cdbb251b117edf58f27e24b6c4cad9f"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.2/zread-linux-aarch64"
      sha256 "6274eebbfac82ed2a10febf57b34e94f649b8cba5c5f9cb0357c37f9eaac9e4b"
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
