class Splash < Formula
  
  desc "🚘 Simple tool for updating Carthage script"
  homepage "https://github.com/artemnovichkov/Splash"
  url "https://github.com/artemnovichkov/Splash/archive/1.0.0.tar.gz"
  sha256 "aaf80d8ad0f5105b4d3db8e7614cb6726c96a416628fdf7451aeeffb42f7fd55"

  head 'https://github.com/artemnovichkov/Carting.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"splash"
  end

end
