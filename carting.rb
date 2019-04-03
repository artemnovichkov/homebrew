class Carting < Formula
  
  desc "🚘 Simple tool for updating Carthage script"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/1.3.5.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  head 'https://github.com/artemnovichkov/Carting.git', :branch => 'master'

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"carting"
  end

end
