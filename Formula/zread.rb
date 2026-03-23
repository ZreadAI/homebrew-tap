# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.1.4             - release version, e.g. 1.2.3
#   ed57f942efd41b12dc921dc4acf799d048fce5db4b42eaab8ad3d2e6609e7aee - SHA-256 of zread-darwin-x86_64
#   dbb3cddcacde68ed23974cd0ab6c11e39d915bd12b780f9e56fc0625abdaedf7 - SHA-256 of zread-darwin-arm64
#   df1fae159559cf3092726e413a6f66f930142f3e226e31198d757089676ddd3f  - SHA-256 of zread-linux-x86_64
#   aabdebaa8eb757c4abc561d77da33f8768cb20797304c4422fa837c460fff209  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.1.4"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.4/zread-darwin-x86_64"
      sha256 "ed57f942efd41b12dc921dc4acf799d048fce5db4b42eaab8ad3d2e6609e7aee"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.4/zread-darwin-arm64"
      sha256 "dbb3cddcacde68ed23974cd0ab6c11e39d915bd12b780f9e56fc0625abdaedf7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.4/zread-linux-x86_64"
      sha256 "df1fae159559cf3092726e413a6f66f930142f3e226e31198d757089676ddd3f"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.4/zread-linux-aarch64"
      sha256 "aabdebaa8eb757c4abc561d77da33f8768cb20797304c4422fa837c460fff209"
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
