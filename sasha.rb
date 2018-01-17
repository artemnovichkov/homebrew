class Sasha < Formula
  
  desc "👨‍💼Reduce daily routine with sasha"
  homepage "https://github.com/artemnovichkov/Sasha"
  url "https://github.com/artemnovichkov/sasha/archive/2.1.tar.gz"
  sha256 "83d7d663eaff2dabdeed0ea4acfb4c13ee4f90a99eb83b316290dba75515f15d"

  head 'https://github.com/artemnovichkov/Sasha.git', :branch => 'master'

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"sasha"
  end

end
