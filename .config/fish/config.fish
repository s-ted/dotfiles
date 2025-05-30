if status is-interactive
    source ~/.alias
    
    # Commands to run in interactive sessions can go here
    set -gx EDITOR kak

    abbr -a l ls

    abbr -a b --function projectdo_build
    abbr -a r --function projectdo_run
    abbr -a t --function projectdo_test
    abbr -a p --function projectdo_tool

    fish_add_path -g ~/.local/bin /usr/local/sbin
end
