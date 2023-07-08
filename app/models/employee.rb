class Employee < ApplicationRecord
    belongs_to :department

    default_scope { order(:id) }

    def name
        first_name + ' ' + last_name
    end
end
