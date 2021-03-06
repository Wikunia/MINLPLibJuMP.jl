module MINLPLibJuMP

using JuMP, MathProgBase
using JSON

include("features.jl")

special_instances = ["multi3N", "multi4N", "multiKND", "eniplac", "simpleN", "circleN"]
METAATTRS = ["LIBRARY", "NAME",
            "NVARS",
            "NBINVARS", "NINTVARS", "NNLVARS",
            "NCONS",
            "NLINCONS", "NNLCONS",
            "OBJSENSE", "OBJTYPE", "NLOPERANDS",
            "STATUS",
            "OBJVAL", "OBJBOUND",
            "SOURCE"]

for i in special_instances
    include("$(Pkg.dir())/MINLPLibJuMP/instances/PODLib/$(i).jl")
end

export fetch_model

end #module
