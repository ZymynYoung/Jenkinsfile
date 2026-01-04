FROM jenkins/jenkins:lts-jdk17

# Перемикаємося на root, щоб користувач jenkins мав можливість ставити sudo пакети
USER root

# Встановлюємо sudo
RUN apt-get update && apt-get install -y sudo curl

# Додаємо jenkins до sudoers без пароля
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Повертаємося на jenkins користувача
USER jenkins

# Проброс портів для Jenkins (8080) та Apache2 (80)
EXPOSE 8080 80
