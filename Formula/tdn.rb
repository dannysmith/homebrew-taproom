class Tdn < Formula
  desc "Task management CLI for humans and AI agents"
  homepage "https://github.com/dannysmith/taskdn"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dannysmith/taskdn/releases/download/tdn-cli-v#{version}/tdn-darwin-arm64.tar.gz"
      sha256 "12421f90767c2a5b6c325ba1937c7c8b5385abc432009dfce176514ec11ff74f"
    end
    on_intel do
      url "https://github.com/dannysmith/taskdn/releases/download/tdn-cli-v#{version}/tdn-darwin-x64.tar.gz"
      sha256 "de3f70acaf74908d27e5e6d1f909c42f29aa502c3bfbc452ff27235d3a163e36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dannysmith/taskdn/releases/download/tdn-cli-v#{version}/tdn-linux-arm64.tar.gz"
      sha256 "489d9aa908eebbd7adf0c04f95de6bb360ac88a6e6a7419052586a51d319492e"
    end
    on_intel do
      url "https://github.com/dannysmith/taskdn/releases/download/tdn-cli-v#{version}/tdn-linux-x64.tar.gz"
      sha256 "6bf0796137a0be8e39c14954848c5e35f1f9538e31af3644ab7b3ca13d651299"
    end
  end

  def install
    bin.install "tdn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tdn --version")
  end
end
