class Carting < Formula
  
  desc "🚘 Simple tool for updating Carthage script"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/1.3.3.tar.gz"
  sha256 "a65ec4a1606824e37ec2ed733dc2919a2dd16034e9ff68dedd89f11b49698286"

  head 'https://github.com/artemnovichkov/Carting.git', :branch => 'master'

  depends_on :xcode => ["9.3", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"carting"
  end

end
