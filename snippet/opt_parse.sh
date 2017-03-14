
while getopts "hq:tv" opt; do
    case $opt in
        h)
            help_syntax
            exit 0
            ;;
        q)
            QUIET=1
            ;;
        t)
            TARGET=$OPTARG
            ;;
        v)
            VERBOSE="V=1"
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            echo "type 'xxx -h for short description "  >&2
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            echo "type 'xxx -h' for short description" >&2
            exit 1
            ;;
    esac
done
