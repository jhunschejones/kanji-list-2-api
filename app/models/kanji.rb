class Kanji < ApplicationRecord
  self.table_name = "kanji" # otherwise ActiveRecord looks for a 'kanjis' table

  VALID_STATUSES = [
    NEW_STATUS = "new".freeze,
    ADDED_STATUS = "added".freeze,
    SKIPPED_STATUS = "skipped".freeze
  ]
  KANJI_REGEX = /[一-龯]/

  validates :character, presence: true, uniqueness: { scope: [:character] }, format: { with: KANJI_REGEX }
  validates :status, inclusion: { in: VALID_STATUSES, message: "must be one of '#{VALID_STATUSES.join(", ")}'" }

  scope :new_status, -> { where(status: NEW_STATUS) }
  scope :added, -> { where(status: ADDED_STATUS) }
  scope :skipped, -> { where(status: SKIPPED_STATUS) }
  scope :skipped_or_added, -> { where(status: [ADDED_STATUS, SKIPPED_STATUS]) }
end
