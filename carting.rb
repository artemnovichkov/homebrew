class Carting < Formula
  desc "🚘 Simple tool for updating Carthage scripts"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/2.1.tar.gz"
  sha256 "eb4ff24c8eb3e6b65da520865a05b6febc732ef3ad42d9c05561b7296b1b613e"
  head "https://github.com/artemnovichkov/Carting.git"

  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"carting", "version"
  end
end
