# Advanced AWS CDK Interview Questions

## 1. How do you use context variables in AWS CDK?
**Answer:**
Context variables allow you to pass configuration values to your CDK app for environment-specific settings.

**Example:**
- Set context in `cdk.json` or via CLI: `cdk deploy -c key=value`

## 2. How do you create custom constructs in AWS CDK?
**Answer:**
Extend the `Construct` class to create reusable components.

**Example (TypeScript):**
```typescript
import { Construct } from 'constructs';
export class MyConstruct extends Construct {
  constructor(scope: Construct, id: string) {
    super(scope, id);
    // Custom resource logic
  }
}
```

## 3. How do you manage cross-stack references in CDK?
**Answer:**
Use `Export` and `Import` to share resources between stacks.

**Example:**
- Export a resource from one stack, import it in another

## 4. How do you test AWS CDK applications?
**Answer:**
Use the `assertions` library to write unit tests for your CDK constructs.

**Example:**
- Test resource properties and outputs

## 5. How do you use CDK pipelines for CI/CD?
**Answer:**
Use the `aws-cdk-lib/pipelines` module to define automated deployment pipelines for your CDK apps.
