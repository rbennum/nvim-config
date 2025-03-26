local function get_python_path(workspace)
  -- use the virtual environment if exists
  local venv_path = workspace .. '/.venv/bin/python'
  if vim.fn.executable(venv_path) == 1 then
    return venv_path
  end

  -- fallback to system Python
  return vim.fn.exepath('python3') or vim.fn.exepath('python') or 'python'
end

return {
  settings = {
    python = {
      pythonPath = get_python_path(vim.fn.getcwd()),
    }
  }
}

