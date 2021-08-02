class Book < ApplicationRecord

    enum status: %w[prestado estante]
end

