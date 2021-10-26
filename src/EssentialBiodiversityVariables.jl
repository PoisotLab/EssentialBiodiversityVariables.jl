module EssentialBiodiversityVariables

using JSON
using HTTP

include("enums.jl")
export EBVClass
export EBVName
export EBVEntityType
export EBVSpatialExtent
export EBVTemporalResolution
export EBVEnvironmentalDomain

const _GEOBON_API_ROOT = "https://portal.geobon.org/api/v1/"

const _GEOBON_API_TYPES = Dict(
    "creator" => String,
    "pubDate" => Int,
    "ebvClass" => EBVClass,
    "ebvName" => EBVName,
    "entityType" => Union{EBVEntityType,String},
    "spatialExtent" => Union{EBVSpatialExtent,String},
    "temporalResolution" => EBVEnvironmentalDomain
)


# Various functions that should NOT be exported
include("misc.jl")

include("query.jl")

include("dataset.jl")


end # module
