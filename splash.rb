class Splash < Formula
  
  desc "🚘 Simple tool for updating Carthage script"
  homepage "https://github.com/artemnovichkov/Splash"
  url "https://github.com/artemnovichkov/Splash/archive/1.0.0.tar.gz"
  sha256 "82fc4afd4d2116eafb6840e40b3036d1a36a9346e4914e6b8137396b7550a39f"

  head 'https://github.com/artemnovichkov/Carting.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"splash"
  end

end
