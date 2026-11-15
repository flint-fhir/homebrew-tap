class Flint < Formula
  desc "Decoupled HL7 FHIR R4 API & pluggable clinical storage engine"
  homepage "https://github.com/flint-fhir/flint"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-fhir/flint/releases/download/v0.5.0/flint_v0.5.0_darwin_arm64.tar.gz"
      sha256 "adc37ae90265bb48531ba804cd27e5ca9ec90a1427c915c50a568d4cb1e85e54"
    else
      url "https://github.com/flint-fhir/flint/releases/download/v0.5.0/flint_v0.5.0_darwin_amd64.tar.gz"
      sha256 "952ced470883c254774ce906c03f1ca96bec28c8d83f81890e358e701af20b46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-fhir/flint/releases/download/v0.5.0/flint_v0.5.0_linux_arm64.tar.gz"
      sha256 "94fa86482d2d71e859454f33eef6b92f1c3d52a9517155ea8c37dfab476125b3"
    else
      url "https://github.com/flint-fhir/flint/releases/download/v0.5.0/flint_v0.5.0_linux_amd64.tar.gz"
      sha256 "fd1c5a2bf5e73b7b3c3f9490312cb4ed764a1ef38b128af1050504c09ad68000"
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
