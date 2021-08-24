cmd /c "gcloud container clusters get-credentials the-incredible-machine --zone us-central1-c --project the-incredible-machine-276601"
cmd /c "gcloud config configurations activate tim"
cmd /c "gcloud config set account matt@theincrediblemachine.tv"
helm uninstall tim-plex
helm install tim-plex .