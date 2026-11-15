class Tdn < Formula
  desc "Task management CLI for humans and AI agents"
  homepage "https://github.com/dannysmith/taskdn"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dannysmith/taskdn/releases/download/tdn-cli-v#{version}/tdn-darwin-arm64.tar.gz"
      sha256 "8a0fc518c30e4da9d8bd3d214e3e46d01a167ad407bb031759de70ddebd17680"
    end
    on_intel do
      url "https://github.com/dannysmith/taskdn/releases/download/tdn-cli-v#{version}/tdn-darwin-x64.tar.gz"
      sha256 "01bdc808e623eb56cb10167b5a03a1236f89ec1fade017c6e3049c117c4dd71b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dannysmith/taskdn/releases/download/tdn-cli-v#{version}/tdn-linux-arm64.tar.gz"
      sha256 "1236ffbf144266cead8f8f5904c431fbbbe9484522f5eeb01f5800394e0634c2"
    end
    on_intel do
      url "https://github.com/dannysmith/taskdn/releases/download/tdn-cli-v#{version}/tdn-linux-x64.tar.gz"
      sha256 "7e567eb39fd62cbb6c648360df63139793552e364f5e8503e8b8518e5d0ec024"
    end
  end

  def install
    bin.install "tdn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tdn --version")
  end
end
