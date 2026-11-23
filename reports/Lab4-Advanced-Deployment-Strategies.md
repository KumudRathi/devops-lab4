# LAB 4 – Advanced Deployment Strategies Report

## 1. Introduction

The objective of this lab is to understand and implement advanced DevOps deployment strategies, automated testing, GitOps-based delivery, secret management, and disaster recovery.

The lab demonstrates how modern deployment practices improve application availability, reliability, security, and release management.

## 2. Automated Testing in CI/CD Pipeline

Automated testing was designed using Python Unit Testing and Integration Testing.

### Implementation
- Created a Python application with addition and multiplication functions.
- Developed unit tests to verify individual functions.
- Developed integration tests to verify combined application workflows.
- Configured GitHub Actions to execute tests automatically on push and pull requests.

### Benefits
- Detects errors early.
- Reduces manual testing effort.
- Prevents unsuccessful builds from proceeding through the pipeline.

## 3. Blue-Green Deployment

Blue-Green Deployment uses two separate application environments.

### Implementation
- Blue environment represents the existing application version.
- Green environment represents the new application version.
- Docker Compose runs both environments.
- Nginx reverse proxy controls which environment receives user traffic.

### Deployment Process
1. Run the Blue and Green environments.
2. Initially route traffic to Blue.
3. Verify the Green environment.
4. Change the Nginx configuration to route traffic to Green.
5. Reload Nginx and verify the new version.

### Benefits
- Reduces deployment downtime.
- Makes rollback easier.
- Allows testing before switching production traffic.

## 4. Canary Deployment

Canary Deployment releases a new application version to a small portion of traffic before a complete rollout.

### Implementation
- Stable environment runs the existing version.
- Canary environment runs the new version.
- Nginx weighted load balancing distributes traffic.
- Initial configuration uses 90% Stable and 10% Canary traffic.
- After validation, traffic can be shifted completely to Canary.

### Benefits
- Reduces the risk of releasing faulty updates.
- Allows testing with limited user traffic.
- Supports gradual application releases.

## 5. GitOps-Based Delivery

GitOps uses a Git repository as the source of truth for application deployment configuration.

### Implementation
- Created Kubernetes Deployment and Service manifests.
- Created an Argo CD Application manifest.
- Configured the Git repository as the source for Kubernetes manifests.
- Configured automated synchronization and self-healing.

### Benefits
- Maintains version-controlled deployment configuration.
- Improves deployment consistency.
- Makes configuration changes traceable.
- Helps detect and correct configuration drift.

Note: Actual GitOps deployment requires a working Kubernetes cluster and Argo CD installation.

## 6. Secret Management

Secret management protects sensitive application information such as passwords, API keys, and tokens.

### Implementation
- Created a Python script to verify the presence of an application secret.
- Used environment variables to access secret values.
- Configured a GitHub Actions workflow to read the APP_SECRET repository secret.
- Added sensitive local environment files to .gitignore.

### Benefits
- Prevents hardcoding secrets in source code.
- Reduces accidental exposure of credentials.
- Provides controlled access to sensitive values.

## 7. Disaster Recovery

Disaster Recovery focuses on restoring application data after accidental loss or failure.

### Implementation
- Created sample application data.
- Developed a shell script to create compressed backups.
- Developed a restore script to recover data.
- Simulated data loss by moving the original data directory.
- Restored data from the backup archive.
- Used SHA-256 checksum verification to validate restored data.

### Benefits
- Reduces data loss.
- Improves recovery readiness.
- Supports backup verification.
- Helps maintain application continuity.

## 8. Comparison of Deployment Strategies

| Strategy | Main Purpose | Key Advantage |
|---|---|---|
| Blue-Green | Switch between two environments | Quick rollback |
| Canary | Gradual traffic rollout | Lower release risk |
| GitOps | Git-driven deployment management | Consistency and traceability |

## 9. Best Practices

- Run automated tests before deployment.
- Maintain separate testing and production environments.
- Monitor application health during releases.
- Use gradual traffic shifting for risky updates.
- Keep secrets outside source code.
- Maintain regular backups.
- Test restoration procedures periodically.
- Store infrastructure and deployment configuration in version control.

## 10. Conclusion

This lab covers important DevOps practices, including automated CI/CD testing, Blue-Green Deployment, Canary Deployment, GitOps-based delivery, secret management, and disaster recovery.

These techniques help improve application reliability, security, deployment flexibility, and recovery readiness.

The practical results should be supported by the actual terminal outputs, GitHub Actions results, and deployment screenshots collected during the lab.

## 11. Screenshots and Evidence

The following evidence should be included:

1. Automated unit and integration test results.
2. GitHub Actions CI pipeline execution.
3. Blue-Green deployment configuration and traffic switching.
4. Canary deployment traffic distribution.
5. GitOps Kubernetes and Argo CD configuration.
6. GitHub repository secret configuration and workflow result.
7. Backup creation and data restoration.
8. Final GitHub repository with Lab 4 files.
