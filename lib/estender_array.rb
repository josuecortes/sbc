# encoding: UTF-8
class Array
  def to_s_ids(ids = "")
    self.each do |o|
      ids << o["id"].to_s if o["id"]
      ids << o["_id"].to_s if o["_id"] 
      ids << " "
    end
    return ids
  end
end
