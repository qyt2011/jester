--[[
  Erase the user's temporary greeting.
]]

mailbox = storage("login_settings", "mailbox_number")
mailbox_directory = profile.mailboxes_dir .. "/" .. mailbox
temp_greeting = mailbox_directory .. "/temp.wav"

return
{
  {
    action = "delete_file",
    file = temp_greeting,
  },
  {
    action = "play_phrase",
    phrase = "temp_greeting_removed",
  },
  {
    action = "call_sequence",
    sequence = "mailbox_options",
  },
}

