require "not_magic/version"
module NotMagic
  def method_missing(method, *args, &block)
    if !!(/not_(.*\?)/).match(method.to_s)
       !self.send($1, *args, &block)
     else
       super
     end
   end

  def respond_to?(method_name, include_private = false)
    !!(/not_.*\?/).match(method_name.to_s) || super
  end
end

class Object
  include NotMagic
end
