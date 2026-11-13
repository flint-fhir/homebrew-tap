# Flint Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [**Flint**](https://github.com/flint-fhir/flint) — the decoupled HL7 FHIR R4 API & pluggable clinical storage engine (`PostgreSQL`, embedded `SQLite` WAL, `Apache Doris` MPP, and `HybridStore`).

## Install

```bash
brew install flint-fhir/tap/flint
```

This installs three pure-Go (`CGO_ENABLED=0`) binaries on macOS (`arm64` / `amd64`) and Linux (`arm64` / `amd64`):

- `flintd` — Flint FHIR R4 API server (`flintd --store=sqlite --sqlite-dsn=flint.db`)
- `flint-seed` — Deterministic US Core v6.1.0 / v7.0.0 & HL7 IPA cohort seeder
- `flint-certify` — Automated 137-check conformance certification CLI

## Quickstart

```bash
flintd --store=sqlite --sqlite-dsn=flint.db
```

## License

Apache-2.0 — see [flint-fhir/flint](https://github.com/flint-fhir/flint).
