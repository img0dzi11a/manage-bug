class Bug < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :status, inclusion: { in: %w[fresh started completed] }, if: -> { bug_type == 0 }
  validates :status, inclusion: { in: %w[fresh started resolved] }, if: -> { bug_type == 1 }
  validates :project_id, presence: true
  validates :developer_id, presence: true
  validates :qa_id, presence: true

  enum status: { fresh: 0, started: 1, completed: 2, resolved: 3 }
  enum bug_type: { feature: 0, bug: 1 }

  belongs_to :project
  belongs_to :developer, class_name: "User", foreign_key: "developer_id"
  belongs_to :qa, class_name: "User", foreign_key: "qa_id"
end