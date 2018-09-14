class Sasha < Formula
  
  desc "👨‍💼Reduce daily routine with sasha"
  homepage "https://github.com/artemnovichkov/Sasha"
  url "https://github.com/artemnovichkov/sasha/archive/2.3.tar.gz"
  sha256 "b9cff938fe6a05d07dafdff8fc499e2d24b676f81df3b745383d980a5550d699"

  head 'https://github.com/artemnovichkov/Sasha.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"sasha"
  end

end
