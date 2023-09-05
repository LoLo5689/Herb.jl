using Documenter

include("../src/Herb.jl")

using .Herb

using HerbConstraints
using HerbSearch
using HerbGrammar 
using HerbData
using HerbEvaluation
using HerbCore

makedocs(;
    modules=[HerbConstraints, HerbSearch, HerbGrammar, HerbData, HerbEvaluation, HerbCore],
    authors="SEBs",
    sitename="Herb.jl",
    repo="https://github.com/Herb-AI/Herb.jl",
    pages = [
        "Basics" => [
            "index.md",
            "install.md",
            "get_started.md",
            "concepts.md"
           ],
        "Sub-Modules" => [
            "HerbGrammar.jl" => "HerbGrammar/index.md",
            "HerbSearch.jl" => "HerbSearch/index.md",
            "HerbConstraints.jl" => "HerbConstraints/index.md",
            "HerbCore.jl" => "HerbData/index.md",
            "HerbEvaluation.jl" => "HerbEvaluation/index.md",
            "HerbData.jl" => "HerbData/index.md",
       ],
    ],
)

deploydocs(;
    repo="github.com/Herb-AI/Herb.jl.git",
    devbranch="documentation",
    devurl="dev",
)

