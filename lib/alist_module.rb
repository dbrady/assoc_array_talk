# AlistModule
# 
# Mix this into Array to add alist helpers to existing Array class.
# Use this if you don't want a "pure" alist class and want to stay
# working with Arrays.
# 
module AlistModule
  def alist_delete(key)
    if elem = assoc(key)
      delete_at index(elem)
    end
  end
end


