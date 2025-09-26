# GitLab CI/CD Tutorial & Hands-On Practice

## 1. Introduction to GitLab CI/CD
GitLab CI/CD automates building, testing, and deploying code using pipelines defined in `.gitlab-ci.yml`.

---

## 2. Creating a Simple Pipeline
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
**Explanation:**
- Defines build, test, and deploy stages.

---

## 3. Using Runners
- Register runners to execute jobs.
- Use shared or specific runners for your project.

---

## 4. Environment Variables
- Define variables in the GitLab UI or `.gitlab-ci.yml` for secrets and configuration.

---

## 5. Monitoring Pipelines
- View job logs and pipeline status in the GitLab UI.
- Retry failed jobs and debug using logs.

---

## Practice Exercise
1. Create a `.gitlab-ci.yml` file for your project.
2. Register a runner and run your pipeline.
3. Add environment variables for configuration.
4. Monitor and debug pipeline runs.

Try these steps in your GitLab repository for hands-on practice!
