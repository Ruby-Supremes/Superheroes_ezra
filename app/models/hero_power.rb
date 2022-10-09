class HeroPower < ApplicationRecord
    validates :strength, inclusion: { in: %w(Strong Weak Average), message: "must be one of %{value}" }
    belongs_to :hero
    belongs_to :power
end
