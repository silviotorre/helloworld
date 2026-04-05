# Hello World in Multiple Languages Extravaganza: JSON

## Summary

This directory contains simple JSON representations of a "Hello, World!" message:

- `HelloWorld.json`: minimal JSON payload
- `HelloWorld2.json`: extended JSON payload with metadata
- `HelloWorld-base64.json`: JSON payload containing a base64-encoded message

All files are valid JSON and can be parsed by standard tools.

## Files

- `HelloWorld.json`
- `HelloWorld2.json`
- `HelloWorld-base64.json`

## Inspect

With PowerShell:

```powershell
Get-Content .\json\HelloWorld.json | ConvertFrom-Json
(Get-Content .\json\HelloWorld.json | ConvertFrom-Json).message
(Get-Content .\json\HelloWorld2.json | ConvertFrom-Json).greeting.message
```

Decode the base64 variant:

```powershell
$encoded = (Get-Content .\json\HelloWorld-base64.json | ConvertFrom-Json).encoded_message
[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($encoded))
```

## Tasks

- [x] Basic JSON hello world payload
- [x] Advanced JSON hello world payload
- [x] Base64 encoded variant
- [ ] Linked JSON files with parameters
- [ ] Add a JSON Schema

## Notes

- JSON does not support comments, so these files are kept strictly valid.
