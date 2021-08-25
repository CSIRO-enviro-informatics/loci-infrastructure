# Grab git
sudo yum install git -y

# The current fork owner
fork_owner="CSIRO-enviro-informatics"

# Clone the api repo
git clone --single-branch --branch timework https://github.com/${fork_owner}/loci-integration-api