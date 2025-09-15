class WistiaDownloader < Formula
  desc "Command-line tool to download videos from Wistia hosting platform"
  homepage "https://github.com/peaz/wistia-downloader"
  version "1.1.1"
  license "MIT"
  head "https://github.com/peaz/wistia-downloader.git", branch: "main"

  on_macos do
    on_intel do
      url "https://github.com/peaz/wistia-downloader/raw/main/build/wistia-downloader-macos-amd64-1.1.1.tar.gz"
      sha256 "ee1ebd23b83c17c34079a1d6d880356e11c687f17f87e4210f1797a0f5305dce"
    end
    on_arm do
      url "https://github.com/peaz/wistia-downloader/raw/main/build/wistia-downloader-macos-arm64-1.1.1.tar.gz"
      sha256 "dfc077cd29b584ced5755522a1765941996f74b763602d63e91382e249257c46"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peaz/wistia-downloader/raw/main/build/wistia-downloader-linux-amd64-1.1.1.tar.gz"
      sha256 "c8de8b73fe2600dbf6933dba191e41c28d7a295b3f8a0b2da678d862b2ed1a26"
    end
    on_arm do
      url "https://github.com/peaz/wistia-downloader/raw/main/build/wistia-downloader-linux-arm64-1.1.1.tar.gz"
      sha256 "638e4f57a3dcf3e4be485fcbc833c13822726a51569766ea173d7b1aec140e85"
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
