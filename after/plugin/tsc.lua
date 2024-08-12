require('tsc').setup({
  auto_open_qflist = true,
  auto_close_qflist = false,
  enable_progress_notifications = true,
  flags = {
    noEmit = true,
  },
  hide_progress_notifications_from_history = true,
  spinner = { "⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷" },
})
