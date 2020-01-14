class RenameRealeaseYearToReleaseYear < ActiveRecord::Migration[5.0]
  def change
    rename_column :songs, :realease_year, :release_year
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
