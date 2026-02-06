# SonarQube Code Smell Analysis

## Project Information
- **Repository Analyzed**: json-server
- **Original Source**: https://github.com/typicode/json-server
- **Language**: TypeScript/JavaScript
- **Description**: JSON Server is a full fake REST API server that requires zero coding

---

## Docker Execution Steps

### 1. Build the Docker Image
```bash
cd json-server
docker build -t json-server-app .
```

### 2. Run the Container
```bash
docker run -d --name json-server-container -p 3000:3000 json-server-app
```

### 3. Verify Container is Running
```bash
docker ps
docker logs json-server-container
```

### 4. Access the API
Open http://localhost:3000 in your browser or use:
```bash
curl http://localhost:3000/posts
```

### 5. Stop the Container
```bash
docker stop json-server-container
docker rm json-server-container
```

---

## SonarQube Analysis Steps

### 1. Start SonarQube Server
```bash
docker run -d --name sonarqube -p 9000:9000 sonarqube:lts-community
```

### 2. Access SonarQube Dashboard
- Open http://localhost:9000
- Login with: admin / admin
- Change password when prompted

### 3. Generate Authentication Token
- Go to User menu → My Account → Security
- Generate a new token (copy and save it)

### 4. Run SonarScanner Analysis
```bash
# Windows (using the provided batch script)
run-sonar.bat

# Or manually:
sonar-scanner -Dsonar.projectKey=json-server ^
              -Dsonar.projectName=json-server ^
              -Dsonar.sources=src ^
              -Dsonar.host.url=http://localhost:9000 ^
              -Dsonar.login=YOUR_TOKEN_HERE
```

### 5. View Results
Open http://localhost:9000/dashboard?id=json-server

---

## Analysis Results Summary

| Metric | Value | Rating |
|--------|-------|--------|
| Bugs | 0 | A |
| Vulnerabilities | 0 | A |
| Code Smells | 0 | A |
| Security Hotspots | 0 | A |
| Duplications | 0.0% | - |
| Quality Gate | Passed | ✅ |

---

## Files Included

| File | Description |
|------|-------------|
| `json-server/Dockerfile` | Docker configuration for containerizing the project |
| `json-server/sonar-project.properties` | SonarQube project configuration |
| `run-sonar.bat` | Batch script to run SonarScanner analysis |
| `Task5_Critical_Analysis.md` | Answers to reflection questions |
| `README.md` | This file |

---

## Students
- [Add your name and roll number here]
- [Add partner's name and roll number here]
