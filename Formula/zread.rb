# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.1.0             - release version, e.g. 1.2.3
#   5dc92db6a4ab98d74ad8eba189fd314c7b5e92eddc73ca2f9df9674f47012358 - SHA-256 of zread-darwin-x86_64
#   36c779d048d618f61c1b014afe2d1541296bc999b476f04d692580b77df6c0f8 - SHA-256 of zread-darwin-arm64
#   50b317fe5a695108ef192adac5f3db558555e56ef9b1411f6dd2ab0bb552290c  - SHA-256 of zread-linux-x86_64
#   77d68171b7461535208db9cfc776bacfb3a69924919547b8eea64c94dad1609d  - SHA-256 of zread-linux-aarch64

class ZreadCli < Formula
  desc "CLI tool for generating documentation from code"
  homepage "https://zread.ai"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.0/zread-darwin-x86_64"
      sha256 "5dc92db6a4ab98d74ad8eba189fd314c7b5e92eddc73ca2f9df9674f47012358"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.0/zread-darwin-arm64"
      sha256 "36c779d048d618f61c1b014afe2d1541296bc999b476f04d692580b77df6c0f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.0/zread-linux-x86_64"
      sha256 "50b317fe5a695108ef192adac5f3db558555e56ef9b1411f6dd2ab0bb552290c"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.0/zread-linux-aarch64"
      sha256 "77d68171b7461535208db9cfc776bacfb3a69924919547b8eea64c94dad1609d"
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
