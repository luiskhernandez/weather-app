module ApplicationHelper
  def decorate(object, decorator)
    yield decorator.new(object)
  end
end
