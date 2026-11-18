class Flint < Formula
  desc "Decoupled HL7 FHIR R4 API & pluggable clinical storage engine"
  homepage "https://github.com/flint-fhir/flint"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-fhir/flint/releases/download/v0.6.0/flint_v0.6.0_darwin_arm64.tar.gz"
      sha256 "fd43f3b2e35d25a624b23ac5baf04f24deffc435ecbb19e73c37aaca1bf1fe04"
    else
      url "https://github.com/flint-fhir/flint/releases/download/v0.6.0/flint_v0.6.0_darwin_amd64.tar.gz"
      sha256 "816f5dd6e62ed94be684ba977cd5dfa32264a056aa2e25ac5ad0fa66742294f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-fhir/flint/releases/download/v0.6.0/flint_v0.6.0_linux_arm64.tar.gz"
      sha256 "208bdf061840199f4b76d3f1b1a6f47f821abd62a80e5e5c5556bac9f0450bcf"
    else
      url "https://github.com/flint-fhir/flint/releases/download/v0.6.0/flint_v0.6.0_linux_amd64.tar.gz"
      sha256 "6545e4d4065f76be1712878825cd5e42abd699e864ffd307d72a860bda39caa1"
    end
  end

  def install
    bin.install "flintd"
    bin.install "seed" => "flint-seed"
    bin.install "certify" => "flint-certify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flintd --version")
  end
end
