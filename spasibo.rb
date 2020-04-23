class Spasibo < Formula
  desc "Support your favourite open source frameworks"
  homepage "https://github.com/artemnovichkov/spasibo"
  url "https://github.com/artemnovichkov/spasibo/archive/0.3.tar.gz"
  sha256 "9a512fc68c852ed0c58c48a2d158c97748e6b4bff91b85c7a18c36ed1db4e1ff"
  head "https://github.com/artemnovichkov/spasibo.git"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

end
