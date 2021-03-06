--[[
  Play back the recorded message, and offer a menu of message actions.
]]

operator_extension = storage("mailbox_settings", "operator_extension")

recording_name = storage("record", "last_recording_name")

playback_keys = {
  ["1"] = "caller_save_recorded_message exit",
  ["2"] = "caller_playback_recorded_message",
  ["3"] = "caller_rerecord_message",
}

-- If there's an available operator extension, then include it in the options
-- and pass that data along to the review sequence.
operator_on_review = ""
if operator_extension ~= "" then
  playback_keys["0"] = "transfer_to_operator"
  operator_on_review = "operator"
end

return
{
  {
    action = "play",
    file = profile.temp_recording_dir .. "/" .. recording_name,
    keys = playback_keys,
  },
  {
    action = "call_sequence",
    sequence = "review_message " .. operator_on_review,
  },
}

