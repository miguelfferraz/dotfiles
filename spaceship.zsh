SPACESHIP_PROMPT_ORDER=(
  venv 
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_USER_SHOW=always

SPACESHIP_PROMPT_ADD_NEWLINE=false

SPACESHIP_CHAR_SUFFIX=" "

SPACESHIP_DIR_TRUNC=3
SPACESHIP_DIR_TRUNC_REPO=true

SPACESHIP_VENV_GENERIC_NAME=(virtualenv venv .venv)
SPACESHIP_VENV_SHOW=true
