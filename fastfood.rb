class Fastfood < Formula
  
  desc "🍔🍟 Share Fastfile between projects"
  homepage "https://github.com/artemnovichkov/fastfood"
  url "https://github.com/artemnovichkov/fastfood/archive/1.3.1.tar.gz"
  sha256 "b8ad31c975abfc6275aeb047f7aa740943f4d8eaf19a4bd119034deaaca481e1"

  head 'https://github.com/artemnovichkov/fastfood.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"fastfood"
  end

end
