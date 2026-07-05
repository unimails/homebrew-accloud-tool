class UnimailClient < Formula
  desc "Open-source UniMail client"
  homepage "https://github.com/unimails/unimail-client"
  version "0.0.2"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/unimails/unimail-client/releases/download/v0.0.2/unimail-client_darwin_arm64.tar.gz"
      sha256 "d9d3812f88abf893d9bf14718ddbf1fa0ef6135ce15ac74dcadfccc797e54ce7"
    else
      url "https://github.com/unimails/unimail-client/releases/download/v0.0.2/unimail-client_darwin_amd64.tar.gz"
      sha256 "420946dcb10e11410f435c68dad38fcfedb24230239e015eaa38c31aae445753"
    end
  end

  def install
    bin.install "unimail-client"
  end

  test do
    assert_path_exists bin/"unimail-client"
  end
end
