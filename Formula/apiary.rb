class Apiary < Formula
  # Update these values as needed as new versions are released
  current_version = "0.3.0"
  current_darwin_arm_sha256 = ""
  current_darwin_intel_sha256 = ""

  on_macos do
    @source_os = "darwin"
    if Hardware::CPU.arm?
      @source_sha256 = current_darwin_arm_sha256
      @source_arch = "aarch64"
    elsif Hardware::CPU.intel?
      @source_sha256 = current_darwin_intel_sha256
      @source_arch = "x86_64"
    end
  end
  on_linux do
    raise "linux not supported"
  end
  source_url = "https://github.com/bixu/apiary/releases/download/#{current_version}/apiary_#{current_version}_#{@source_arch}-apple-#{@source_os}.zip"

  desc "A command-line interface to the Honeycomb API"
  homepage "https://github.com/bixu/apiary"
  url source_url
  version current_version
  sha256 @source_sha256

  def install
    bin.install "apiary"
  end

  test do
    `#{bin}/apiary --version`
  end
end
