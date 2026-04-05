# Hello World in Multiple Languages Extravaganza

This repository collects small "Hello, World!" examples across multiple languages and data formats. The current goal is repository quality: accurate documentation, runnable examples, and lightweight verification that contributors can repeat locally.

![Hello world project extravaganza](media/meme-hello-world.jpeg)

## Repository Contract

Each language directory should provide:

- a `README.md` with real run instructions
- at least one runnable or inspectable example
- optional advanced examples or tests
- a task list aligned with the files that actually exist

Naming is intentionally not fully uniform because languages and ecosystems differ. This repository currently uses all of the following patterns:

- `hello_world.*`
- `hello-world.*`
- `helloworld.*`
- language-specific exceptions such as `Main.java`

If you add a new language, document the chosen naming convention in that language directory instead of forcing a repo-wide rename.

## Getting Started

Clone the repository:

```bash
git clone https://github.com/silviotorre/helloworld.git
cd helloworld
```

Examples:

- Python: `python python/helloworld.py`
- PowerShell: `powershell -File powershell/helloworld.ps1`
- JavaScript: open `javascript/hello-world.html` in a browser
- JSON: inspect `json/HelloWorld.json` with any JSON parser

## Implemented Directories

The repository currently contains examples for:

- `cmd`
- `go`
- `java`
- `javascript`
- `json`
- `kusto`
- `perl`
- `powershell`
- `python`
- `sql`
- `vb.net`
- `yaml`

## Current Status

Implemented and documented today:

- [x] Cmd
- [x] Go
- [x] Java
- [x] JavaScript
- [x] JSON
- [x] Kusto
- [x] Perl
- [x] PowerShell
- [x] Python
- [x] SQL
- [x] VB.NET
- [x] YAML

Planned future additions:

- [ ] Bash
- [ ] C
- [ ] C#
- [ ] Cobol
- [ ] F#
- [ ] Fortran
- [ ] Groovy
- [ ] Kotlin
- [ ] Matlab
- [ ] Node.js
- [ ] Q#
- [ ] R
- [ ] Ruby
- [ ] Rust
- [ ] Scala
- [ ] T-SQL
- [ ] U-SQL
- [ ] Visual Basic
- [ ] XML

## Supported Checks

Run the root smoke check from the repository root:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/smoke-check.ps1
```

The smoke check validates:

- required files in the implemented directories
- internal README links to local files
- JavaScript HTML script references
- JSON parsing
- YAML parsing when a YAML parser is available in the environment
- Python execution and `unittest` discovery
- PowerShell sample execution

Checks degrade explicitly when a required tool is not installed.

## Contribution Notes

For small contributions:

1. Add a new language directory or improve an existing one.
2. Include a `README.md` with real run instructions.
3. Update this root README if the set of implemented languages changes.
4. Run the smoke check before opening a PR.

For a starting point, use [templates/LANGUAGE_README_TEMPLATE.md](templates/LANGUAGE_README_TEMPLATE.md).

## Project Roadmap

Core repository completion:

- [x] Establish a minimum contract for implemented directories
- [x] Correct broken links and invalid run instructions in main documentation
- [x] Add a root smoke check
- [x] Make Python tests discoverable through standard `unittest` discovery
- [ ] Add GitHub Actions based on the smoke check

Nice to have:

- [ ] Add badges to the root README
- [ ] Add a project logo
- [ ] Add translations
- [ ] Add a wiki

Future language additions:

- [ ] Expand the list of languages beyond the currently implemented set

## Contributors

- Silvio Torre ([silviotorre](https://github.com/silviotorre))

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE).

## References

- [GitHub Hello World](https://docs.github.com/en/get-started/quickstart/hello-world)
