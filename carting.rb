class Carting < Formula
  desc "🚘 Simple tool for updating Carthage scripts"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/2.1.6.tar.gz"
  sha256 "faef6d419def5d51edca5b13b0e21cbde54c4f850ef47d1215807c1c6848a2a4"
  head "https://github.com/artemnovichkov/Carting.git"

  depends_on :xcode => ["12.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"carting", "version"
  end
end
