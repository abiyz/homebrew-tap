class Abiyz < Formula
  desc "Command-line tool for Abiyz Cloud"
  homepage "https://abiyz.com"
  url "https://registry.npmjs.org/abiyz/-/abiyz-0.2.2.tgz"
  sha256 "16aed288c0f724f970be5b9b1dd3709e56ae4679abaace8bf12c5c14ac1f065d"
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
