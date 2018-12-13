class CreateGbpcryptos < ActiveRecord::Migration[5.2]
  def change
    create_table :gbpcryptos do |t|
      
      t.timestamps
    end
  end
end
