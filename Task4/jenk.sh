# Update package list and install Java (Jenkins prerequisite)
sudo apt update
sudo apt install -y openjdk-11-jdk

# Add Jenkins repo key and repo
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Install Jenkins
sudo apt-get install fontconfig openjdk-17-jre
sudo apt-get install jenkins -y


# Start and enable Jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Output initial Admin password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
