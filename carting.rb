class Carting < Formula
  desc "🚘 Simple tool for updating Carthage scripts"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/2.1.4.tar.gz"
  sha256 "837d4683ce0afc1c52bb6be358a8186bf0f3c4515cde9893507075c3a57eec46"
  head "https://github.com/artemnovichkov/Carting.git"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"carting", "version"
  end
end
