function dataset()
    req = HTTP.get("$(root)datasets")
    if req.status == 200
        return JSON.parse(String(req.body))
    else
        @info req.status
        return _no_ebv()
    end
end

function dataset(i::Int)
    req = HTTP.get("$(root)datasets/$(i)")
    if req.status == 200
        return JSON.parse(String(req.body))
    else
        @info req.status
        return _no_ebv()
    end
end
