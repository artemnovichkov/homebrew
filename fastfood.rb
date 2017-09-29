class Fastfood < Formula
  
  desc "🍔🍟 Share Fastfile between projects"
  homepage "https://github.com/artemnovichkov/fastfood"
  url "https://github.com/artemnovichkov/fastfood/archive/1.1.1.tar.gz"
  sha256 "ce1e0af16209dfd77f181684f1232b225f1db68222dec558bfa7695e8a76a6dc"

  head 'https://github.com/artemnovichkov/fastfood.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"fastfood"
  end

end
