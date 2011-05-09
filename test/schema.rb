ActiveRecord::Schema.define(:version => 0) do
  create_table :birds, :force => true do |t|
    t.string :name
    t.string :spingying
  end
  
  create_table :pets, :force => true do |t|
    t.string :nickname
    t.string :py
  end
end