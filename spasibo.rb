class Spasibo < Formula
  desc "Support your favourite open source frameworks"
  homepage "https://github.com/artemnovichkov/spasibo"
  url "https://github.com/artemnovichkov/spasibo/archive/0.1.tar.gz"
  sha256 "1f9fcfcfadab72d337e430ec82fa8373174b2b1c7ec55bd6d27eda5816726153"
  head "https://github.com/artemnovichkov/spasibo.git"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

end
