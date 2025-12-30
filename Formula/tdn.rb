class Tdn < Formula
  desc "Task management CLI for humans and AI agents"
  homepage "https://github.com/taskdn/taskdn"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taskdn/taskdn/releases/download/tdn-cli-v#{version}/tdn-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64"
    end
    on_intel do
      url "https://github.com/taskdn/taskdn/releases/download/tdn-cli-v#{version}/tdn-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_X64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taskdn/taskdn/releases/download/tdn-cli-v#{version}/tdn-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/taskdn/taskdn/releases/download/tdn-cli-v#{version}/tdn-linux-x64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X64"
    end
  end

  def install
    bin.install "tdn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tdn --version")
  end
end
