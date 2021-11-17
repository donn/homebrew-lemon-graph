class LemonGraph < Formula
    desc "Library for Efficient Modeling and Optimization in Networks"
    homepage "https://lemon.cs.elte.hu/trac/lemon"
    sha256 "71b7c725f4c0b4a8ccb92eb87b208701586cf7a96156ebd821ca3ed855bad3c8"
    head "https://github.com/tpet/lemon"
    url "http://lemon.cs.elte.hu/pub/sources/lemon-1.3.1.tar.gz"
    version "1.3.1"

    depends_on "cmake"

    def install
        system "cmake", "-B", "build", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "."
        system "cmake", "--build", "build", "-j", "--target", "install"
    end
end