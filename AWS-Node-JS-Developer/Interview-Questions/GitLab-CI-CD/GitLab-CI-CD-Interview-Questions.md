# GitLab CI/CD Interview Questions

## 1. What is GitLab CI/CD?
**Answer:**
GitLab CI/CD is a continuous integration and continuous deployment system built into GitLab, allowing you to automate building, testing, and deploying code.

**Example:**
- Use `.gitlab-ci.yml` to define pipeline stages and jobs.

## 2. How do you define a pipeline in GitLab CI/CD?
**Answer:**
You define a pipeline using a `.gitlab-ci.yml` file, specifying stages, jobs, and scripts.

**Example:**
```yaml
stages:
  - build
  - test
  - deploy

build-job:
  stage: build
  script:
    - npm install

test-job:
  stage: test
  script:
    - npm test

deploy-job:
  stage: deploy
  script:
    - npm run deploy
```

## 3. What are runners in GitLab CI/CD?
**Answer:**
Runners are agents that execute pipeline jobs. They can be shared or specific to a project.

## 4. How do you use environment variables in GitLab CI/CD?
**Answer:**
You can define environment variables in the GitLab UI or in the `.gitlab-ci.yml` file.

## 5. How do you trigger pipelines manually or automatically?
**Answer:**
Pipelines can be triggered by code pushes, merge requests, schedules, or manually from the UI.
