class Spasibo < Formula
  desc "Support your favourite open source frameworks"
  homepage "https://github.com/artemnovichkov/spasibo"
  url "https://github.com/artemnovichkov/spasibo.git", :tag => "0.1", :revision => "e4e3d8b6b9b1cab41bfa3b2dbd8153c19efe13ce"
  head "https://github.com/artemnovichkov/spasibo.git"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

end
