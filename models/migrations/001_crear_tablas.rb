Sequel.migration do
  up do
    create_table :usuarios do
      primary_key :id
      String :usuario
      String :password
    end
  end
  
  down do
    drop_table :usuarios
  end
end
