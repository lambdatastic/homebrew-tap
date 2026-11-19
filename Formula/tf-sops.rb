class TfSops < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for SOPS encryption of Terraform/OpenTofu plan and state files"
  homepage "https://github.com/lambdatastic/tf-sops"
  url "https://github.com/lambdatastic/tf-sops/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "4f5a3a1565c0e932b7d5c8cb91c58b414eea4b84d4ec19001fe79ce35d717229"
  license "MPL-2.0"

  depends_on "python@3.15"

  def install
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test tf-sops`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system bin/"tf-sops", "--help"
  end
end
