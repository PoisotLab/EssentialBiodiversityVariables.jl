"""
    queryparameters()

Returns an array with the allowed keyword arguments for the `query` function.
"""
function queryparameters()
    return collect(keys(EssentialBiodiversityVariables._GEOBON_API_TYPES))
end


function query(; kwargs...)
    query_set = Pair{String,String}[]
    sizehint!(query_set, length(kwargs))
    for (param, arg) in kwargs
        if String(param) in keys(_GEOBON_API_TYPES)
            @assert typeof(arg) <: _GEOBON_API_TYPES[String(param)]
            push!(query_set, String(param) => _spaceout(arg))
        else
            throw(ArgumentError("$(String(param)) must be supported by the EBV API -- see EssentialBiodiversityVariables.queryparameters() for a list of keywords"))
        end
    end
    query_string = map(p -> "$(p.first)=$(p.second)", query_set)
    query_url = replace(join(query_string, "&"), " " => "+")
    req = HTTP.get("$(_GEOBON_API_ROOT)datasets/filter?$(query_url)")
    if req.status == 200
        return JSON.parse(String(req.body))
    else
        @info req.status
        return _no_ebv()
    end
end
