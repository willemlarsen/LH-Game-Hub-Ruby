# Stores languages native name and other names
class Language
  def initialize(native, *other)
    @native = native
    @other = other[0]
    @other ||= {}
  end
  def displayable_name(user_language)
    if @other[user_language]
      "#{@other[user_language]}(#{@native})"
    else
      @native
    end
  end
end
