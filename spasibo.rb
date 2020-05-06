class Spasibo < Formula
  desc "Support your favourite open source frameworks"
  homepage "https://github.com/artemnovichkov/spasibo"
  url "https://github.com/artemnovichkov/spasibo/archive/0.3.2.tar.gz"
  sha256 "577dd6da4533981452973195859e1b9d172730f616d24e3d4fbb08cad2b4cf3f"
  head "https://github.com/artemnovichkov/spasibo.git"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

end
