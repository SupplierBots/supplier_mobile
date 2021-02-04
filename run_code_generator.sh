
action="build"
if [[ $# -ge 1 && $1 -eq "-w" ]]
  then
    action="watch"
fi

flutter pub run build_runner $action --delete-conflicting-outputs
