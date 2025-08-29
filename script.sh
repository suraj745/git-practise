set -euo pipefail

echo "Branch check"


if [[ $(systemctl is-active jenkins) == "inactive" ]];
then
	echo "Starting jenkins"
	systemctl start jenkins
	echo "Jenkins is $(systemctl is-active jenkins)"

fi

