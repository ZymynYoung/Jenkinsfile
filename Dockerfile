FROM jenkins/jenkins:lts-jdk17

# Перемикаємося на root
USER root

# Встановлюємо sudo
RUN apt-get update && apt-get install -y sudo apache2

# Додаємо jenkins до sudoers без пароля
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Повертаємося на jenkins користувача
USER jenkins

# Порт 8080 для Jenkins, 80 для Apache
EXPOSE 8080 80
