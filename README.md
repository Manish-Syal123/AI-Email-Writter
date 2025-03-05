# MailCraft

MailCraft is a SpringBoot application which generates the AI-reply to the email and allows use to select the tone of the email reply. I have created a **Chrome Extension** and **React webapp** and integerated this API in that.

## Prerequisites

- Java 21 JDK
- Maven 3.9.6
- Docker
- Docker Compose

## Getting Started

### Clone the repository

```sh
git clone https://github.com/Manish-Syal123/MailCraft.git
cd MailCraft
```

### Build and Run the Application using Docker
**Build the Docker image**

```sh
docker build -t mailcraft .
```

**Run the Docker container**

```sh
docker run -p 8080:8080 -e GEMINI_URL="your_api_url" -e GEMINI_KEY="your_api_key" mailcraft
```

## Running the Application Locally without Docker
**1. Build the application**

```sh
mvn clean package -DskipTests
```

**2. Run the application**
```sh
java -jar target/*.jar
```

**API Endpoints**
After running the application, you can test the API using the following endpoint:
URL: ```http://localhost:8080/api/email/generate```

**Contributing**
Feel free to submit issues and pull requests.
