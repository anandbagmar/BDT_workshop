
def get_page_name symbol
    symbol.to_s.split('_').map{|part| part.capitalize}.join
end

def page_class name
      Object.const_get get_page_name(name.to_s + '_page')
end

def on_page name=nil, *args
    page = page_class(name).new Capybara.current_session, *args if name
    yield page if block_given?
    page
end