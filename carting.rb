class Carting < Formula
  desc "🚘 Simple tool for updating Carthage scripts"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/2.1.4.tar.gz"
  sha256 "2effcb72523ee977d1ebdbfda1ff58e98d93ff92866585291975ad03885e2e55"
  head "https://github.com/artemnovichkov/Carting.git"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"carting", "version"
  end
end
