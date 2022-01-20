# Rock, Paper, Scissors,Lizard, Spock Game in Julia
# Based on The Big Bang Theory TV Series from CBS
# Rock, Paper, Scissors, Lizard, Spock is a game of chance that expands.
# It is first used to settle a dispute about what to watch on TV between Sheldon and Raj in "The Lizard-Spock Expansion" episode.
# The game was originally created by Sam Kass with Karen Bryla.

function play_rock_paper_scissors()
    moves = ["rock", "paper", "scissors","lizard","spock"]
    computer_move = moves[rand(1:3)]

    # Base.prompt is similar to readline which we used before
    println("Please enter rock, paper, scissors, lizard or spock")
    human_move = Base.prompt("")
    # Appends a ": " to the end of the line by default

    print("Rock...")
    sleep(1)

    print("Paper...")
    sleep(1)

    print("Scissors...")
    sleep(1)

    print("Lizard...")
    sleep(1)

    print("Spock")
    sleep(1)

    print("Shoot!\n")

    # We now use if statements to compare what the user choose with what the computer choose

    if computer_move == human_move
        println("You tied, please try again")
    elseif computer_move == "rock" && human_move == "scissors"
        println("You lose, the computer won with rock, please try again")
    elseif computer_move == "paper" && human_move == "rock"
        println("You lose, the computer won with paper, please try again")
    elseif computer_move == "scissors" && human_move == "paper"
        println("You lose, the computer won with scissors, please try again")
    elseif computer_move == "rock" && human_move == "lizard"
        println("You lose, the computer won with rock, please try again")
    elseif computer_move == "lizard" && human_move == "spock"
        println("You lose, the computer won with lizard, please try again")
    elseif computer_move == "spock" && human_move == "scissors"
        println("You lose, the computer won with spock, please try again")
    elseif computer_move == "scissors" && human_move == "lizard"
        println("You lose, the computer won with scissors, please try again")
    elseif computer_move == "lizard" && human_move == "paper"
        println("You lose, the computer won with lizard, please try again")
    elseif computer_move == "paper" && human_move == "spock"
        println("You lose, the computer won with paper, please try again")
    elseif computer_move == "spock" && human_move == "rock"
        println("You lose, the computer won with spock, please try again")
    else
        println("You won, the computer lost with $computer_move, nice work!")
    end
    println("Hail Sam Kass!")
end
play_rock_paper_scissors()
