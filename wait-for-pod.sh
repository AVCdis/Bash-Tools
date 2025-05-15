# Wait for pod to be running
echo "Waiting up to 120s for $pod to be running..."
kubectl wait -n $context --for=condition=ready pod -l run=$pod --timeout 120s

if [ $? -ne 0 ]
then
    echo "The pod did not start correctly. Please reload and try again."
    cd ~
    echo "Press CTRL-C to exit"
    read x
fi

kubectl get all
