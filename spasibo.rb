class Spasibo < Formula
  desc "Support your favourite open source frameworks"
  homepage "https://github.com/artemnovichkov/spasibo"
  url "https://github.com/artemnovichkov/spasibo"
  version "0.1"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

end
