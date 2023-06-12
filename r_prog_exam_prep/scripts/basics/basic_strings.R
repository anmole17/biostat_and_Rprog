## Strings

a="atgcc"

nchar(a)
paste(100,a,sep="_")
cat(a)
substr(a,2,4)# substring
strtrim(a, 3)
strsplit(a,3)

str4 <- "AECH9939-ALM"
strunk <- strtrim(str4, 4)
strunk

st = "filename_doc"
strsplit(st, "_")

aa <- unlist(strsplit("fname.doc", "\\."))
aa[1]

ss = "filename.doc"
 strsplit(ss, "\\.")

SS=toupper(ss)
SS
tolower(SS)