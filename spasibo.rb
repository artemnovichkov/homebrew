class Spasibo < Formula
  desc "Support your favourite open source frameworks"
  homepage "https://github.com/artemnovichkov/spasibo"
  url "https://github.com/artemnovichkov/spasibo/archive/0.2.tar.gz"
  sha256 "3fb9bfef4d85f5a40b686d3f1d00ac7e385bc86e87f786fe1f278df1d7a3ac3c"
  head "https://github.com/artemnovichkov/spasibo.git"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

end
