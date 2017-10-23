class Splash < Formula
  
  desc "🚘 Simple tool for updating Carthage script"
  homepage "https://github.com/artemnovichkov/Splash"
  url "https://github.com/artemnovichkov/Splash/archive/1.0.1.tar.gz"
  sha256 "65b286b06f6c484ea597142f31ec3422a994e553fd2b30da9176424d90b9f193"

  head 'https://github.com/artemnovichkov/Carting.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"splash"
  end

end
