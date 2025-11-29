# Homebrew Formula for Apiary CLI
class Apiary < Formula
  desc 'A CLI for the Honeycomb API'
  homepage 'https://github.com/bixu/apiary'
  version '0.4.11'
  license 'Apache 2'

  on_macos do
    on_intel do
      url "https://github.com/bixu/apiary/releases/download/#{version}/apiary-x86_64-apple-darwin.tar.gz"
      sha256 'e6657aa960cd1d7ebb6c56e5cc3d3ad1d1ab12eb45999ec54f938c7ea7c71925'
    end

    on_arm do
      url "https://github.com/bixu/apiary/releases/download/#{version}/apiary-aarch64-apple-darwin.tar.gz"
      sha256 'ad3036e9c2583b2a632d2c894ee233ca615d2b7704b314c4afab4ebb9de3a42c'
    end
  end

  on_linux do
    url "https://github.com/bixu/apiary/releases/download/#{version}/apiary-x86_64-unknown-linux-gnu.tar.gz"
    sha256 'e8926bbd4c0c70c64c753a127ff6ad89f627039846f912bdad56f67437661ec1'
  end

  def install
    bin.install 'apiary'
  end

  test do
    system "#{bin}/apiary", '--help'
    assert_match 'A CLI for the Honeycomb API', shell_output("#{bin}/apiary --help")
  end
end
