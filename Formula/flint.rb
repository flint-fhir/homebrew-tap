class Flint < Formula
  desc "Decoupled HL7 FHIR R4 API & pluggable clinical storage engine"
  homepage "https://github.com/flint-fhir/flint"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flint-fhir/flint/releases/download/v0.4.0/flint_v0.4.0_darwin_arm64.tar.gz"
      sha256 "48d0086df482ebec0566dfab1aa9409507554f425ca6d276e6a1ed3a284d0822"
    else
      url "https://github.com/flint-fhir/flint/releases/download/v0.4.0/flint_v0.4.0_darwin_amd64.tar.gz"
      sha256 "75b999704bbd4151a32d4f7eda9fbd74fdf257adf2320f08adb68f8d028612ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/flint-fhir/flint/releases/download/v0.4.0/flint_v0.4.0_linux_arm64.tar.gz"
      sha256 "1fac2cb7c55f8627e31e9ab6c76dbc5ccdcddc3c956d9968d65d7e9f4c9b6294"
    else
      url "https://github.com/flint-fhir/flint/releases/download/v0.4.0/flint_v0.4.0_linux_amd64.tar.gz"
      sha256 "cdd20cd7e1791d2ee77145aea809b3861e32fb0ff2899707629a00c02867dfe6"
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
