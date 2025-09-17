import std/[os, strutils]

proc help() =
  echo """
 ___ _   _ _ __   ___ _ __ 
/ __| | | | '_ \ / _ \ '__|
\__ \ |_| | |_) |  __/ |   
|___/\__,_| .__/ \___|_|   
          |_|              

SuperDNF - A dnf wrapper which adds aliases for common functions

Usage
  super [COMMAND] [PACKAGES...] [ARGS TO PASS TO DNF...]

Commands
  install, i, +          Install one or more packages
  remove, rm, -          Remove one or more packages
  search, /              Search for packages by keywords
  info, !                Show package information
  update, upgrade, u     Update installed pacakges
  list, ls               List installed packages
  autoremove, autorm     Remove unused packages
  clean                  Cleam dnf cache
  help, h                Shows this message
"""

when isMainModule:
  var args: seq[string] = @[]
  if paramCount() > 0:
    for i in 1..paramCount():
      args.add(paramStr(i))
    if args[0] in ["+", "i", "install"]:
      args.delete(0)
      echo "dnf install " & args.join(" ")
      # For specific repo, just pass --from-repo= as normal
    elif args[0] in ["-", "rm", "remove"]:
      args.delete(0)
      echo "dnf remove " & args.join(" ")
      # For specific repo, just pass --from-repo= as normal
    elif args[0] in ["/", "search"]:
      args.delete(0)
      echo "dnf search " & args.join(" ")
      # For specific repo, just pass --from-repo= as normal
    elif args[0] in ["!", "info"]:
      args.delete(0)
      echo "dnf info " & args.join(" ")
      # For specific repo, just pass --from-repo= as normal
    elif args[0] in ["autorm", "autoremove"]:
      echo "dnf autoremove"
    elif args[0] == "clean":
      echo "dnf clean all"
    elif args[0] in ["ls", "list"]:
      echo "dnf list installed"
    elif args[0] in ["u", "update", "upgrade"]:
      echo "dnf update"
    elif args[0] in ["h", "help"]:
      help()
    else:
      echo "dnf " & args.join(" ")
  else:
    help()

