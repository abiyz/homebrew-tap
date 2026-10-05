class Abiyz < Formula
  desc "Command-line tool for Abiyz Cloud"
  homepage "https://abiyz.com"
  url "https://registry.npmjs.org/abiyz/-/abiyz-0.0.1.tgz"
  sha256 "fbf02072ef2cb075713e229144d76ce805996ec55deff00ac6cca7c2b28a59e7"
  license :cannot_represent

  depends_on "node@24"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "not released yet", shell_output(bin/"abiyz")
  end
end
