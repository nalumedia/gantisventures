class Account < ApplicationRecord

    has_many :balances
    has_many :moves
end
