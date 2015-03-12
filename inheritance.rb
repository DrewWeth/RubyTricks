# Simple object inheritance with Ruby. You can pass all, none, or edited arguments to the parent class with super()

class Parent
  def show_args(*args)
    p args
  end
end

class Child < Parent
  def show_args(a,b,c)
    a = :f
    super(a,c)
  end
end

Child.new.show_args(:a,:b,:c)

# Drews-MacBook-Pro-4:ruby-tricks zizimaza$ ruby inheritance.rb 
# [:f, :c]
