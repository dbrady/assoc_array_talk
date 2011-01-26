# Initial cut at a pure "Alist" class. Right now this inherits from
# Array but this is wrong because it changes the behavior of the
# array. Needs to be refactored to be its own class, maybe inherit the
# same interfaces as Array (Enumerable, etc).
class Alist < Array
  def [](key)
    assoc(key)
  end
  
  def []=(key, value)
    unshift([key, value])
  end
  
  def delete(key)
    if pos = index(self[key])
      delete_at(pos)
    end
  end
end


