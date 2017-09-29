class Fastfood < Formula
  
  desc "🍔🍟 Share Fastfile between projects"
  homepage "https://github.com/artemnovichkov/fastfood"
  url "https://github.com/artemnovichkov/fastfood/archive/1.1.1.tar.gz"
  sha256 "da5f70c8815af178329422487b2a30bbaeef8135efeb0faba1ffb72fd8e0710e"

  head 'https://github.com/artemnovichkov/fastfood.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"fastfood"
  end

end
