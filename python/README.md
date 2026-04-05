# Hello World in Multiple Languages Extravaganza: Python

## Summary

This directory contains two Python examples:

- `helloworld.py`: the simplest console example
- `helloworld2.py`: a slightly more structured example using a singleton metaclass and a decorator

It also includes `test_helloworld.py`, which is discoverable through standard `unittest` discovery.

## Files

- `helloworld.py`
- `helloworld2.py`
- `hellotest.py`
- `test_helloworld.py`

`hellotest.py` is kept for backwards compatibility. `test_helloworld.py` is the canonical test entry point.

## Run

From the repository root:

```bash
python python/helloworld.py
python python/helloworld2.py
python -m unittest discover -s python -p "test*.py" -v
```

Or from inside `python/`:

```bash
python helloworld.py
python helloworld2.py
python -m unittest discover -p "test*.py" -v
```

## Tasks

- [x] Basic Python hello world
- [x] Advanced Python hello world
- [x] Unit test discoverable with `unittest`
- [ ] Linked JSON-backed variant

## Notes

- File names intentionally use `helloworld*.py` in this directory.
- The advanced example now avoids printing at import time so tests stay predictable.
