function __fish_itamae_no_subcommand
  for i in (commandline -opc)
    if contains -- $i destroy docker generate help init local ssh version
      return 1
    end
  end
  return 0
end

# common
complete -c itamae -f -n '__fish_itamae_no_subcommand' -s l -l log-level -d ''
complete -c itamae -f -n '__fish_itamae_no_subcommand' -l color -d ''
complete -c itamae -f -n '__fish_itamae_no_subcommand' -l no-color -d ''
complete -c itamae -f -n '__fish_itamae_no_subcommand' -s c -l config -d ''

# destroy
complete -c itamae -f -n '__fish_itamae_no_subcommand' -a destroy -d 'Undo role or cookbook'

# docker
complete -c itamae -f -n '__fish_itamae_no_subcommand' -a docker -d 'Create Docker image'
complete -c itamae -A -f -n '__fish_seen_subcommand_from docker' -l recipe-graph -d '[EXPERIMENTAL] Write recipe dependency graph in DOT'
complete -c itamae -A -f -n '__fish_seen_subcommand_from docker' -s j -l node-json -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from docker' -s y -l node-yaml -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from docker' -s n -l dry-run -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from docker' -l no-dry-run -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from docker' -l shell -d 'Default shell: /bin/sh'
complete -c itamae -A -f -n '__fish_seen_subcommand_from docker' -l ohai -d 'This option is DEPRECATED and will be unvaliable'
complete -c itamae -A -f -n '__fish_seen_subcommand_from docker' -l no-ohai -d 'This option is DEPRECATED and will be unvaliable'
complete -c itamae -A -f -n '__fish_seen_subcommand_from docker' -l image -d 'This option or \'container\' option is required'
complete -c itamae -A -f -n '__fish_seen_subcommand_from docker' -l container -d 'This option or \'image\' option is required'
complete -c itamae -A -f -n '__fish_seen_subcommand_from docker' -l tls-verify-peer -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from docker' -l no-tls-verify-peer -d ''

# generate
complete -c itamae -f -n '__fish_itamae_no_subcommand' -a generate -d 'Initialize role or cookbook'

# help
complete -c itamae -f -n '__fish_itamae_no_subcommand' -a help -d 'Describe available commands or one specific command'

# init
complete -c itamae -f -n '__fish_itamae_no_subcommand' -a init -d 'Create a new project'

# local
complete -c itamae -f -n '__fish_itamae_no_subcommand' -a local -d 'Run Itamae locally'
complete -c itamae -A -f -n '__fish_seen_subcommand_from local' -l recipe-graph -d '[EXPERIMENTAL] Write recipe dependency graph in DOT'
complete -c itamae -A -f -n '__fish_seen_subcommand_from local' -s j -l node-json -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from local' -s y -l node-yaml -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from local' -s n -l dry-run -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from local' -l no-dry-run -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from local' -l shell -d 'Default shell: /bin/sh'
complete -c itamae -A -f -n '__fish_seen_subcommand_from local' -l ohai -d 'This option is DEPRECATED and will be unvaliable'
complete -c itamae -A -f -n '__fish_seen_subcommand_from local' -l no-ohai -d 'This option is DEPRECATED and will be unvaliable'
complete -c itamae -A -f -n '__fish_seen_subcommand_from local' -l profile -d '[EXPERIMENTAL] Save profiling data'

# ssh
complete -c itamae -f -n '__fish_itamae_no_subcommand' -a ssh -d 'Run Itamae via ssh'
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -l recipe-graph -d '[EXPERIMENTAL] Write recipe dependency graph in DOT'
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -s j -l node-json -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -s y -l node-yaml -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -s n -l dry-run -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -l no-dry-run -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -l shell -d 'Default shell: /bin/sh'
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -l ohai -d 'This option is DEPRECATED and will be unvaliable'
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -l no-ohai -d 'This option is DEPRECATED and will be unvaliable'
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -l profile -d '[EXPERIMENTAL] Save profiling data'
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -s h -l host -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -s u -l user -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -s i -l key -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -s p -l port -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -l vagrant -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -l no-vagrant -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -l ask-password -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -l no-ask-password -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -l sudo -d ''
complete -c itamae -A -f -n '__fish_seen_subcommand_from ssh' -l no-sudo -d ''

# version
complete -c itamae -f -n '__fish_itamae_no_subcommand' -a version -d 'Print version'
