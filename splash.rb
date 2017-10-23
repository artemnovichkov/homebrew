class Splash < Formula
  
  desc "🚘 Simple tool for updating Carthage script"
  homepage "https://github.com/artemnovichkov/Splash"
  url "https://github.com/artemnovichkov/Splash/archive/1.0.0.tar.gz"
  sha256 "c2fb9d0c895e4d1fe0be5b69b5ae46680f2395da5e87a051e2c3f327e1190700"

  head 'https://github.com/artemnovichkov/Carting.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"splash"
  end

end
