class UnimailClient < Formula
  desc "Open-source UniMail client"
  homepage "https://github.com/unimails/unimail-client"
  version "0.0.4"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/unimails/unimail-client/releases/download/v0.0.4/unimail-client_darwin_arm64.tar.gz"
      sha256 "eee1e777c82f8c7fe8e9ba479d78ed2946d1901c3d908300062698f0317a72d1"
    else
      url "https://github.com/unimails/unimail-client/releases/download/v0.0.4/unimail-client_darwin_amd64.tar.gz"
      sha256 "ca00e7ff9025bd5777d64b9d7687df236bbd6edf383eccf1b8055e1677f8f355"
    end
  end

  def install
    bin.install "unimail-client"
  end

  test do
    assert_path_exists bin/"unimail-client"
  end
end
