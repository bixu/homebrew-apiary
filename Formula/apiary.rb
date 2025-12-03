# Homebrew Formula for Apiary CLI
class Apiary < Formula
  desc 'A CLI for the Honeycomb API'
  homepage 'https://github.com/bixu/apiary'
  version '0.5.0'
  license 'Apache 2'

  on_macos do
    on_intel do
      url "https://github.com/bixu/apiary/releases/download/#{version}/apiary-x86_64-apple-darwin.tar.gz"
      sha256 '47ccb465a636a8a3b7acc851412914f0d334263a8ef3f6afdefd1bfb6e650670'
    end

    on_arm do
      url "https://github.com/bixu/apiary/releases/download/#{version}/apiary-aarch64-apple-darwin.tar.gz"
      sha256 '6f631c72e9ca73c1b64112489c90a8c1fa0b01ce7e86063c771ec8467f03f3ca'
    end
  end

  on_linux do
    url "https://github.com/bixu/apiary/releases/download/#{version}/apiary-x86_64-unknown-linux-gnu.tar.gz"
    sha256 '1bef40a3fcade8edbbb49c1cbc6726581ef9464d68d02c7d98f4b75e47d09d72'
  end

  def install
    bin.install 'apiary'
  end

  test do
    system "#{bin}/apiary", '--help'
    assert_match 'A CLI for the Honeycomb API', shell_output("#{bin}/apiary --help")
  end
end
