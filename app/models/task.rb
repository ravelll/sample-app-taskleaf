class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validate :validate_name_not_including_4byte_char

  private

  def validate_name_not_including_4byte_char
    if name&.chars.any? {|c| c.bytesize >= 4 }
      errors.add(:name, "に特殊な文字を含めることはできません。")
    end
  end
end
