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
