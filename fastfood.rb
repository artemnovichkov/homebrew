class Fastfood < Formula
  
  desc "🍔🍟 Share Fastfile between projects"
  homepage "https://github.com/artemnovichkov/fastfood"
  url "https://github.com/artemnovichkov/fastfood/archive/1.4.1.tar.gz"
  sha256 "241c3b8083b7fc2e601a4487da4fb9f7cf2e5334a335c36e13a20e476351f834"

  head 'https://github.com/artemnovichkov/fastfood.git', :branch => 'master'

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"fastfood"
  end

end
