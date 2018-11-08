class Carting < Formula
  
  desc "🚘 Simple tool for updating Carthage script"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/1.3.2.tar.gz"
  sha256 "3dc22619356f9dddd39a46410ca5ffec5b4677b6b49907440f0f9fddd8e114a0"

  head 'https://github.com/artemnovichkov/Carting.git', :branch => 'master'

  depends_on :xcode => ["9.3", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"carting"
  end

end
