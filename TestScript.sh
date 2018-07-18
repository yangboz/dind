#/bin/bash
#echo "4445 446 447" | awk 'BEGIN{printf "exec dockerd "}{for(i=1;i<=NF;i++)printf" -H 0.0.0.0:%s",$i}END{printf"-H unix:\/\/\/var\/run\/docker.sock \n"}'
# echo "What is your ports?"
# read PORTS
# echo "Got it, $PORTS"
function tmp1() {
PORTS="1234,5678"
portsArr=(${PORTS//,/ })
 printf " dockerd "
 for port in "${portsArr[@]}"; do
    printf " -H 0.0.0.0:%s$port"
 done
 printf " -H unix:///var/run/docker.sock  $DOCKER_DAEMON_ARGS"
}
echo $(tmp1)
#| awk '{for(i=1;i<=NF;i++)print $i}'
#portArray=("$PORTS")
# get length of an array
#tLen=${portArray[@]}
#printf "%s" "${ports}"  | awk '{for(i=1;i<=NF;i++)print $i}'
#printf ${tLen} 
# for (( i=0; i<${tLen}; i++ ));
# do
#   printf ${portArray[$i]}
# done

