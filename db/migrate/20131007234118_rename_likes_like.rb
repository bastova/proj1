class RenameLikesLike < ActiveRecord::Migration
  def change
  rename_column(:likes, :like, :title)
  end
end
