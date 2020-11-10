class Carting < Formula
  desc "🚘 Simple tool for updating Carthage scripts"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/2.1.5.tar.gz"
  sha256 "e169585953d75dad039f43b600356d78ceb12146e30ba528f479c141c92ba831"
  head "https://github.com/artemnovichkov/Carting.git"

  depends_on :xcode => ["12.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"carting", "version"
  end
end
