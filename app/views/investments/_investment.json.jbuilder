json.extract! investment, :id, :investment_amount, :fees, :fee_notes, :terms, :pre_money, :post_money, :target_exit, :target_exit_notes, :ownership, :notes, :source_id, :round, :security_type, :created_at, :updated_at
json.url investment_url(investment, format: :json)
