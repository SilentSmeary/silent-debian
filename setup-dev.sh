# Define a function to prompt the user before each step
prompt_and_execute() {
    echo "   _____               ____                       _     "
    echo "  |  __ \             |  _ \                     | |    "
    echo "  | |  | | _____   __ | |_) |_ __ __ _ _ __   ___| |__  "
    echo "  | |  | |/ _ \ \ / / |  _ <| '__/ _  | '_ \ / __| '_ \ "
    echo "  | |__| |  __/\ V /  | |_) | | | (_| | | | | (__| | | |"
    echo "  |_____/ \___| \_/   |____/|_|  \__,_|_| |_|\___|_| |_|"

    echo ""

    read -p "Press 'y' to run this step or any other key to skip: " choice
    if [[ "$choice" == "y" ]]; then
        sudo rm -rf local-downloads/
    else
        echo "Skipped this step."
    fi
}

prompt_and_execute

