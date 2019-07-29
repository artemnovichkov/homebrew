class Carting < Formula
  desc "🚘 Simple tool for updating Carthage scripts"
  homepage "https://github.com/artemnovichkov/Carting"
  url "https://github.com/artemnovichkov/Carting/archive/2.0.2.tar.gz"
  sha256 "6ef44700a1d8cdaf9a61467d85f1dde44d3a18bc0dbf4b302b803c1d530b42e7"
  head "https://github.com/artemnovichkov/Carting.git"

  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"carting", "version"
  end
end
