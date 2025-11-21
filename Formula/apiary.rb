# Homebrew Formula for Apiary CLI
class Apiary < Formula
  desc 'Comprehensive CLI for Honeycomb API with dual authentication'
  homepage 'https://github.com/bixu/apiary'
  version 'v0.3.0'
  license 'MIT'

  on_macos do
    on_intel do
      url "https://github.com/bixu/apiary/releases/download/v#{version}/apiary-x86_64-apple-darwin.tar.gz"
      sha256 '348a8cfbcf369e781d7cad55a1d664ae6eb4ac9448891fe06e6c473d388de6f0'
    end

    on_arm do
      url "https://github.com/bixu/apiary/releases/download/v#{version}/apiary-aarch64-apple-darwin.tar.gz"
      sha256 'ee7d57f7f70ad9c239b5dddbcfb6afbce739f41733803324548095634edd47ef'
    end
  end

  def install
    bin.install 'apiary'
  end

  test do
    system "#{bin}/apiary", '--help'
    assert_match 'A comprehensive CLI for Honeycomb API', shell_output("#{bin}/apiary --help")
  end
end
