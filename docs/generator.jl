using MINLPLibJuMP

LIBS = ["bcp","global", "ibm", "inf", "minlp","minlp2", "morg", "mpec", "mult3", "mult4","PODLib", "poly", "prince", "qcqp", "qcqp2","qcqp3"]

function collect_loading(libname::AbstractString, dat::Dict)
    f = open(joinpath(Pkg.dir("MINLPLibJuMP"), "benchmark", "loading", "$(libname).dat"), "r")
    for l in readlines(f)
        sl = split(l)
        d_idx = findfirst(sl, "/")
        i = sl[d_idx+1]
        t = parse(sl[d_idx+2])
        @assert sl[d_idx-1] == libname
        dat[i]["lt"] = t
    end
    close(f)
    return dat
end

function collect_dimension(libname::AbstractString, dat::Dict)
    f = open(joinpath(Pkg.dir("MINLPLibJuMP"), "benchmark", "dimension", "$(libname).dat"), "r")
    for l in readlines(f)
        sl = split(l)
        @assert sl[1] == libname
        i = sl[2]
        dat[i]["sense"] = sl[3]
        dat[i]["nvars"] = parse(sl[4])
        dat[i]["nbinvars"] = parse(sl[5])
        dat[i]["nintvars"] = parse(sl[6])
        dat[i]["ncons"] = parse(sl[7])
        dat[i]["nlincons"] = parse(sl[8])
        dat[i]["nnlcons"] = parse(sl[9])
        dat[i]["nothercons"] = parse(sl[10])
    end
    close(f)
    return dat
end

function generate_lib_page(libname::AbstractString)
    isdir("temp") || mkdir("temp")
    f = open(joinpath("temp",libname), "w")
    names = MINLPLibJuMP.fetch_names(libname)
    N = length(names)
    DAT = Dict(i => Dict() for i in names)
    DAT = collect_loading(libname, DAT)
    DAT = collect_dimension(libname, DAT)
    write(f, "$(N)\n\n")
    write(f, "| NAME | LT | SENSE | VAR | BINVAR | INTVAR | CON | LINCON | NLCONS | OTHERCONS |\n")
    write(f, "|------|----|-------|-----|--------|--------|-----|--------|--------|-----------|\n")
    err = 0
    for i in names
        try
            write(f,"| $i | $(round(DAT[i]["lt"],2)) | $(DAT[i]["sense"]) | $(DAT[i]["nvars"]) | $(DAT[i]["nbinvars"]) | $(DAT[i]["nintvars"]) | $(DAT[i]["ncons"]) | $(DAT[i]["nlincons"]) | $(DAT[i]["nnlcons"]) | $(DAT[i]["nothercons"]) |\n")
        catch e
            err += 1
            write(f,"| $i | - | - | - | - | - | - | - | - | - |\n")
        end
    end
    write(f, "\nERROR $(err)\n")
    close(f)
end

for l in LIBS
    generate_lib_page(l)
end
