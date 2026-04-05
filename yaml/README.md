# Hello World in Multiple Languages Extravaganza: YAML

## Summary

This directory contains YAML examples that model a simple pipeline-style "Hello, World!" job:

- `helloworld.yaml`: minimal pipeline definition
- `helloworld2.yaml`: slightly richer pipeline with variables in the script block

These files are meant to be inspected as YAML configuration, not executed directly by this repository.

## Files

- `helloworld.yaml`
- `helloworld2.yaml`

## Inspect

If your environment provides a YAML parser, parse them with that tool. In PowerShell 7+, for example:

```powershell
Get-Content .\yaml\helloworld.yaml -Raw | ConvertFrom-Yaml
Get-Content .\yaml\helloworld2.yaml -Raw | ConvertFrom-Yaml
```

If `ConvertFrom-Yaml` is not available, open the files in an editor and treat them as configuration examples.

## Tasks

- [x] Basic YAML hello world example
- [x] Advanced YAML hello world example
- [ ] Add schema or consumer-specific validation

## Notes

- The smoke check validates YAML parsing only when a YAML parser is available in the local environment.
