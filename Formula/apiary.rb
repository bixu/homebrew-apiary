# Homebrew Formula for Apiary CLI
class Apiary < Formula
  desc 'Comprehensive CLI for Honeycomb API with dual authentication'
  homepage 'https://github.com/bixu/apiary'
  version '0.1.0'
  license 'MIT'

  on_macos do
    on_intel do
      url "https://github.com/bixu/apiary/releases/download/v#{version}/apiary-x86_64-apple-darwin.tar.gz"
      sha256 'PLACEHOLDER_INTEL_SHA256'
    end

    on_arm do
      url "https://github.com/bixu/apiary/releases/download/v#{version}/apiary-aarch64-apple-darwin.tar.gz"
      sha256 'PLACEHOLDER_ARM_SHA256'
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
