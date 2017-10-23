class Splash < Formula
  
  desc "🚘 Simple tool for updating Carthage script"
  homepage "https://github.com/artemnovichkov/Splash"
  url "https://github.com/artemnovichkov/Splash/archive/1.0.1.tar.gz"
  sha256 "b0646805acc82c6595ed6d51b613c1f301c48c0f9777c9b5d8967c94eae30156"

  head 'https://github.com/artemnovichkov/Carting.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"splash"
  end

end
