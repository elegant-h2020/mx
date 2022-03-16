@echo off
setlocal enableextensions

:: prefer the interpreter specified by MX_PYTHON
if defined MX_PYTHON (
  %MX_PYTHON% -u "%~dp0mx.py" %*
) else if defined MX_PYTHON_VERSION (
  python%MX_PYTHON_VERSION% -u "%~dp0mx.py" %*
) else (
  python -u "%~dp0mx_enter.py" %*
)
