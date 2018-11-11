class Task < ApplicationRecord
  before_validation :set_nameless_name

  validates :name, presence: true, length: { maximum: 30 }
  validate :validate_name_not_including_4byte_char

  has_one_attached :image
  belongs_to :user

  scope :recent, -> { order(created_at: :desc) }

  def self.ransackable_attributes(auth_object = nil)
    %w[name created_at]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

  private

  def validate_name_not_including_4byte_char
    if name&.chars.any? {|c| c.bytesize >= 4 }
      errors.add(:name, "に特殊な文字を含めることはできません。")
    end
  end

  def set_nameless_name
    self.name = '名前なし' if name.blank?
  end
end
