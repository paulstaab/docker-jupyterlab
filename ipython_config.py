c = get_config()

# Print value of last assigned
c.InteractiveShell.ast_node_interactivity = "last_expr_or_assign"

# Enable Logging
c.Application.log_level='ERROR'

# Show plot inline and increase their size
c.InteractiveShellApp.matplotlib = "inline"
