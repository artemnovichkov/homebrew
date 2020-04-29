class Spasibo < Formula
  desc "Support your favourite open source frameworks"
  homepage "https://github.com/artemnovichkov/spasibo"
  url "https://github.com/artemnovichkov/spasibo/archive/0.3.1.tar.gz"
  sha256 "2154497ab18806635dcb7e92fbc4d0985fdbab15307cb6d9cca95e4d9113ce2d"
  head "https://github.com/artemnovichkov/spasibo.git"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

end
