#!/bin/sh

# Setup gcp function shells
tmux new-window -n 'gcp-dedupe'
tmux send-keys -t 'gcp-dedupe' "bundle exec functions-framework-ruby --target dedupe_recipients --port 8086" C-m

tmux new-window -n 'gcp-send-email'
tmux send-keys -t 'gcp-send-email' "bundle exec functions-framework-ruby --target send_email --port 8087" C-m

tmux new-window -n 'gcp-send-sms'
tmux send-keys -t 'gcp-send-sms' "bundle exec functions-framework-ruby --target send_sms --port 8088" C-m

tmux new-window -n 'gcp-send-apn'
tmux send-keys -t 'gcp-send-apn' "bundle exec functions-framework-ruby --target send_apn --port 8089" C-m

tmux new-window -n 'gcp-send-fcm'
tmux send-keys -t 'gcp-send-fcm' "bundle exec functions-framework-ruby --target send_fcm --port 8090" C-m

tmux new-window -n 'gcp-send-voice'
tmux send-keys -t 'gcp-send-voice' "bundle exec functions-framework-ruby --target send_voice --port 8091" C-m

tmux new-window -n 'gcp-sync-email-events'
tmux send-keys -t 'gcp-sync-email-events' "bundle exec functions-framework-ruby --target sync_email_events --port 8092" C-m

tmux new-window -n 'gcp-sync-all-tenants-email-events'
tmux send-keys -t 'gcp-sync-all-tenants-email-events' "bundle exec functions-framework-ruby --target sync_all_tenants_email_events --port 8093" C-m

tmux new-window -n 'gcp-sync-twilio-event '
tmux send-keys -t 'gcp-sync-twilio-event' "bundle exec functions-framework-ruby --target sync_twilio_event --port 8094" C-m

