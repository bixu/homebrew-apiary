# Homebrew Formula for Apiary CLI
class Apiary < Formula
  desc 'Comprehensive CLI for Honeycomb API with dual authentication'
  homepage 'https://github.com/bixu/apiary'
  version '0.4.8'
  license 'MIT'

  on_macos do
    on_intel do
      url "https://github.com/bixu/apiary/releases/download/#{version}/apiary-x86_64-apple-darwin.tar.gz"
      sha256 '257e1492605921fc388397550a307e07d012a68d04b779b52f74cf790135a505'
    end

    on_arm do
      url "https://github.com/bixu/apiary/releases/download/#{version}/apiary-aarch64-apple-darwin.tar.gz"
      sha256 '55b67b77c062d81445869e00c6a5d71b5449488ba0dd0968ecc866be9d90295f'
    end
  end

  on_linux do
    url "https://github.com/bixu/apiary/releases/download/#{version}/apiary-x86_64-unknown-linux-gnu.tar.gz"
    sha256 'a2bcec7bb31c347c8fbf44b08b923c462914a367ee887dfb042c809e04e813e9'
  end

  def install
    bin.install 'apiary'
  end

  test do
    system "#{bin}/apiary", '--help'
    assert_match 'A comprehensive CLI for Honeycomb API', shell_output("#{bin}/apiary --help")
  end
end
