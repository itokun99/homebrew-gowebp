class Gowebp < Formula
  desc "Convert images to/from WebP — Go port of webp-converter"
  homepage "https://github.com/itokun99/gowebp"
  url "https://github.com/itokun99/gowebp/releases/download/v1.0.0/gowebp-darwin-arm64.tar.gz"
  sha256 "753989b28c507aa23b879e6d937571d7fd975788e157a47c8085c71ad08d95cb"
  version "1.0.0"
  license "MIT"

  def install
    libexec.install "bin/gowebp"
    libexec.install Dir["lib/libwebp_osx_arm64/*"] => "libwebp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gowebp version")
  end
end