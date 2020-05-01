i = open(".gitignore", "w")
println(i, "*.code-workspace\n.vscode/\n.DS_Store")
close(i)

# Version check
versioninfo()

# RCall check
using RCall
R"sessionInfo()"
