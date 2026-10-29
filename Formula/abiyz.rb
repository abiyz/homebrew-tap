class Abiyz < Formula
  desc "Command-line tool for Abiyz Cloud"
  homepage "https://abiyz.com"
  url "https://registry.npmjs.org/abiyz/-/abiyz-0.2.8.tgz"
  sha256 "b3c65f2f21cffb8edae7b06beba96b38c7c2b96375766b8acfe891d2ced68bb0"
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
