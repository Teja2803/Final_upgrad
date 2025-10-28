# Update package list and install Java (Jenkins prerequisite)
sudo apt update
sudo apt install -y openjdk-11-jdk

# Add Jenkins repo key and repo
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Install Jenkins
sudo apt update
sudo apt install -y jenkins

# Start and enable Jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Output initial Admin password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
