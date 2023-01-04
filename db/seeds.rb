Kanji.create_with(
  status: "new",
  added_to_list_at: Time.now.utc - 5.minutes
).find_or_create_by!(
  character: "自"
)

Kanji.create_with(
  status: "added",
  added_to_list_at: Time.now.utc - 10.minutes
).find_or_create_by!(
  character: "室"
)

Kanji.create_with(
  status: "skipped",
  added_to_list_at: Time.now.utc - 15.minutes
).find_or_create_by!(
  character: "形"
)
