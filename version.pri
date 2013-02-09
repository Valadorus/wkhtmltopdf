GIT_VERSION=$$system(git show --pretty=\"%ad-%h\" --date=short)

MAJOR_VERSION=$$section(GIT_VERSION, "-", 0, 0)
MINOR_VERSION=$$section(GIT_VERSION, "-", 1, 1)
PATCH_VERSION=$$section(GIT_VERSION, "-", 2, 2)
BUILD=$$section(GIT_VERSION, "-", 3, 3) 

DEFINES += MAJOR_VERSION=$$MAJOR_VERSION MINOR_VERSION=$$MINOR_VERSION PATCH_VERSION=$$PATCH_VERSION BUILD=$$BUILD
