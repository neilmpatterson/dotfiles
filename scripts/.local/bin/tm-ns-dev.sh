#!/bin/sh

# Set Session Name
SESSION="notification-service"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

# Only create tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]
then
    # Start New Session with our name
    tmux new-session -d -s $SESSION
    # Name first Pane and start nvim
    tmux rename-window -t 0 'editor'
    tmux send-keys -t 'editor' 'nvim' C-m # Switch to bind script?

    # Create and setup window for rails server
    tmux new-window -t $SESSION:1 -n 'rails-server'
    tmux send-keys -t 'rails-server' 'bundle exec rails s -b 0.0.0.0 -p 3001' C-m # Switch to bind script?

    # setup rails-console window
    tmux new-window -t $SESSION:2 -n 'rails-console'
    tmux send-keys -t 'rails-console' "rails c && require_relative 'lib/misc/pubsub_dev_tools' && PubSubDevTools.setup_topics" C-m

    # Setup gcp function shells
    tmux new-window -t $SESSION:3 -n 'gcp-functions'
    tmux send-keys -t 'gcp-functions' "bundle exec functions-framework-ruby --target dedupe_recipients --port 8086" C-m
	tmux split-window -h "bundle exec functions-framework-ruby --target send_email --port 8087" C-m
	tmux split-window -h "bundle exec functions-framework-ruby --target send_sms --port 8088" C-m
	tmux split-window -h "bundle exec functions-framework-ruby --target send_apn --port 8089" C-m
	tmux split-window -h "bundle exec functions-framework-ruby --target send_fcm --port 8090" C-m
	tmux split-window -h "bundle exec functions-framework-ruby --target send_voice --port 8091" C-m
	tmux split-window -h "bundle exec functions-framework-ruby --target sync_email_events --port 8092" C-m
	tmux split-window -h "bundle exec functions-framework-ruby --target sync_all_tenants_email_events --port 8093" C-m
	tmux split-window -h "bundle exec functions-framework-ruby --target sync_twilio_event --port 8094" C-m
	tmux select-layout even-horizontal

	# setup zshell
	tmux new-window -t $SESSION:4 -n 'Shell'
    tmux send-keys -t 'Shell' "zsh" C-m 'clear' C-m
fi

# Attach Session, on the Main window
tmux attach-session -t $SESSION:0
