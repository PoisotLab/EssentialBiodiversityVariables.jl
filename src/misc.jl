function _spaceout(t::String)
    return t
end

function _spaceout(t)
    return replace(String(Symbol(t)), r"([A-Z])" => s" \1")[2:end]
end

function _no_ebv()
    return JSON.parse("{\"message\":\"No datasets available.\",\"data\":[],\"code\":404}")
end