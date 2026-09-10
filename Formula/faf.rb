class Faf < Formula
  desc "Fast parallel filesystem search by filename"
  homepage "https://github.com/eof0/faf"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eof0/faf/releases/download/v#{version}/faf-macos-arm64-v#{version}.tar.gz"
      sha256 "3511c1b89519f90b604e0b3ed3f9c15429c17ed836dc4ad3f8a770eee5226f67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/eof0/faf/releases/download/v#{version}/faf-linux-x86_64-v#{version}.tar.gz"
      sha256 "0179554cdcc2badb24c60c3d69d799d2a03a7cf73a8fd8b4c893acc2257f242c"
    end

    on_arm do
      url "https://github.com/eof0/faf/releases/download/v#{version}/faf-linux-arm64-v#{version}.tar.gz"
      sha256 "df9130af8e9da9398aa1c4deee37b87b71de6c5008cbd1f720cf83d55a9587ae"
    end
  end

  def install
    bin.install "faf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/faf --version")
  end
end
