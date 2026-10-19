class WistiaDownloader < Formula
  desc "Command-line tool to download videos from Wistia hosting platform"
  homepage "https://github.com/peaz/wistia-downloader"
  version "1.1.2"
  license "MIT"
  head "https://github.com/peaz/wistia-downloader.git", branch: "main"

  on_macos do
    on_intel do
      url "https://github.com/peaz/wistia-downloader/raw/main/build/wistia-downloader-macos-amd64-1.1.2.tar.gz"
      sha256 "15e4d5dc98608a27082e44e31d5278754c4b3045364fc586bb57eeef8adfdfd6"
    end
    on_arm do
      url "https://github.com/peaz/wistia-downloader/raw/main/build/wistia-downloader-macos-arm64-1.1.2.tar.gz"
      sha256 "f6b92ec04e96d9ee60e367fb915fd72931eec77097d9cc812e1e0081cc1a37a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peaz/wistia-downloader/raw/main/build/wistia-downloader-linux-amd64-1.1.2.tar.gz"
      sha256 "5988d9959441e15973330b1513419cc347225fe66d5c76d5f128b504419bfda2"
    end
    on_arm do
      url "https://github.com/peaz/wistia-downloader/raw/main/build/wistia-downloader-linux-arm64-1.1.2.tar.gz"
      sha256 "c5dac579549eafa2c7adb716f3d502470fe2877d18bddb1d18dfcf91ae129572"
    end
  end

  def install
    bin.install "wistia-downloader"
  end

  test do
    # Test that the binary runs and shows help
    assert_match "Wistia", shell_output("#{bin}/wistia-downloader --help 2>&1", 1)
  end
end
