class Fastfood < Formula
  
  desc "🍔🍟 Share Fastfile between projects"
  homepage "https://github.com/artemnovichkov/fastfood"
  url "https://github.com/artemnovichkov/fastfood/archive/1.1.tar.gz"
  sha256 "4ccdbdd62407f8c7cb4e24a9f8135090fb09717011a47dce5f7fc2c3939827dc"

  head 'https://github.com/artemnovichkov/fastfood.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"fastfood"
  end

end
