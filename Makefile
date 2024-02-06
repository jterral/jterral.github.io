define HEADER
        __               _             __  __
       / /_  __  __     (_)___  ____  / /_/ /
      / __ \/ / / /    / / __ \/ __ \/ __/ /
     / /_/ / /_/ /    / / /_/ / /_/ / /_/ /
    /_.___/\__, /  __/ /\____/\____/\__/_/
          /____/  /___/

endef
export HEADER

# Shared components
include rules/variables.mk
include rules/help.mk

include rules/precommit.mk
include rules/hugo.mk
include rules/debug.mk
