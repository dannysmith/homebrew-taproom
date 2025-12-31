class Tdn < Formula
  desc "Task management CLI for humans and AI agents"
  homepage "https://github.com/taskdn/taskdn"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taskdn/taskdn/releases/download/tdn-cli-v#{version}/tdn-darwin-arm64.tar.gz"
      sha256 "77463cdbd02bae372283a02efc0c2dd14ee5f5f17ab749e09c534c0d46c8238b"
    end
    on_intel do
      url "https://github.com/taskdn/taskdn/releases/download/tdn-cli-v#{version}/tdn-darwin-x64.tar.gz"
      sha256 "b25a4c545853a886a06e1fd2b5d50cccb2ff18d35e5dbd3c460f62f1490f10c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taskdn/taskdn/releases/download/tdn-cli-v#{version}/tdn-linux-arm64.tar.gz"
      sha256 "fae4512331a3f3f4819e903abf827af53e1c9b8c2bb8c474eaf14aecbc7c0c76"
    end
    on_intel do
      url "https://github.com/taskdn/taskdn/releases/download/tdn-cli-v#{version}/tdn-linux-x64.tar.gz"
      sha256 "908ee9881b7511ed12eef0bef866170d20a4d217cc0da71c4f57bb0a1f8b6ab6"
    end
  end

  def install
    bin.install "tdn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tdn --version")
  end
end
