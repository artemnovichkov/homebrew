class Carting < Formula
  desc "🚘 Simple tool for updating Carthage scripts"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/1.3.5.tar.gz"
  sha256 "995998d933a943d5c8e7ba028d0d4a5ef44f256eea7f48422ce2b9cf126d8cfb"
  head "https://github.com/artemnovichkov/Carting.git"

  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"carting", "version"
  end
end
