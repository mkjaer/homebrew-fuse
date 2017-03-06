class FuseZip < Formula
  desc "FUSE file system to create & manipulate ZIP archives"
  homepage "https://code.google.com/p/fuse-zip/"
  url "https://bitbucket.org/agalanin/fuse-zip/downloads/fuse-zip-0.4.2.tar.gz"
  sha256 "3d4ee113d4c7918ad3c660f8088473d5fabf67b3476fef16ec7f5bd8a4182fdc"
  head "https://code.google.com/p/fuse-zip/", :using => :hg

  depends_on "pkg-config" => :build
  depends_on "libzip"
  depends_on :osxfuse

  def install
    system "make", "INSTALLPREFIX=#{prefix}", "install"
  end

  test do
    system bin/"fuse-zip", "--help"
  end
end
