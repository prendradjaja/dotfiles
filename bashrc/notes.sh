# mini-framework for personal project notes {
## how to implement for a git project at /some/path:
## - clone the project to /some/path.notes
## - that directory will be a parallel copy of your repo
## - but it'll be an orphan branch called notes: git checkout --orphan notes
## - add a Makefile for pushing JOURNAL and TODO
## - vim config needs mapping ZM -> make

pt () {
  cd `pwd`.notes && vim TODO.txt && cd -
}
pj () {
  cd `pwd`.notes && vim JOURNAL.md && cd -
}
# }
