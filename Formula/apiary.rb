# Homebrew Formula for Apiary CLI
class Apiary < Formula
  desc 'Comprehensive CLI for Honeycomb API with dual authentication'
  homepage 'https://github.com/bixu/apiary'
  version '0.4.10'
  license 'MIT'

  on_macos do
    on_intel do
      url "https://github.com/bixu/apiary/releases/download/#{version}/apiary-x86_64-apple-darwin.tar.gz"
      sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'
    end

    on_arm do
      url "https://github.com/bixu/apiary/releases/download/#{version}/apiary-aarch64-apple-darwin.tar.gz"
      sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'
    end
  end

  on_linux do
    url "https://github.com/bixu/apiary/releases/download/#{version}/apiary-x86_64-unknown-linux-gnu.tar.gz"
    sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'
  end

  def install
    bin.install 'apiary'
  end

  test do
    system "#{bin}/apiary", '--help'
    assert_match 'A CLI for the Honeycomb API', shell_output("#{bin}/apiary --help")
  end
end
