# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.1.1             - release version, e.g. 1.2.3
#   ce0d35698b0aedcacfd00f2b08568a3b66fac3e511c704b0d66ed113d65a4b84 - SHA-256 of zread-darwin-x86_64
#   92bb7fe4cefa4ce276abf2f06a3ed2da9133e567f6c26a547dd59d3be589cda6 - SHA-256 of zread-darwin-arm64
#   c6e5b773d6b287acd03c09d62d40eb6848c9728b9bc743a2b4b63f6a5bebda09  - SHA-256 of zread-linux-x86_64
#   3fbf6c0414461516beb68452a41d903236dd6a7e905fa43b510f0038a8ac2aa6  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "CLI tool for generating documentation from code"
  homepage "https://zread.ai"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.1/zread-darwin-x86_64"
      sha256 "ce0d35698b0aedcacfd00f2b08568a3b66fac3e511c704b0d66ed113d65a4b84"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.1/zread-darwin-arm64"
      sha256 "92bb7fe4cefa4ce276abf2f06a3ed2da9133e567f6c26a547dd59d3be589cda6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.1/zread-linux-x86_64"
      sha256 "c6e5b773d6b287acd03c09d62d40eb6848c9728b9bc743a2b4b63f6a5bebda09"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.1/zread-linux-aarch64"
      sha256 "3fbf6c0414461516beb68452a41d903236dd6a7e905fa43b510f0038a8ac2aa6"
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
