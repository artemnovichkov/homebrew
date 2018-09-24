class Carting < Formula
  
  desc "🚘 Simple tool for updating Carthage script"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/1.2.15.tar.gz"
  sha256 "e1a89786c25e5b01842b1dbe599377a3bec68e7fe82466e54a994a77ec3e851b"

  head 'https://github.com/artemnovichkov/Carting.git', :branch => 'master'

  depends_on :xcode => ["9.3", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"carting"
  end

end
