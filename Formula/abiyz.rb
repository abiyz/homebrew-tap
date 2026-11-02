class Abiyz < Formula
  desc "Command-line tool for Abiyz Cloud"
  homepage "https://abiyz.com"
  url "https://registry.npmjs.org/abiyz/-/abiyz-0.2.9.tgz"
  sha256 "f3b661d4dc3d18727c0ebaebb905e0e185766263a74023f37acc49b198788c5a"
  license :cannot_represent

  depends_on "node@24"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/abiyz --version").strip
  end
end
