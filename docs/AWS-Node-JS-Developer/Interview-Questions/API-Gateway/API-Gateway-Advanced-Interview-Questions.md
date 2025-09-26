# Advanced API Gateway Interview Questions

## 1. How do you implement custom domain names in API Gateway?
**Answer:**
You can map custom domain names to your API Gateway APIs and manage them using Route 53 and ACM for SSL certificates.

**Example:**
- Set up a custom domain in API Gateway console
- Attach an ACM certificate for HTTPS

## 2. How do you use request/response mapping templates?
**Answer:**
Mapping templates in API Gateway transform incoming requests and outgoing responses using Velocity Template Language (VTL).

**Example:**
- Modify request body before passing to Lambda
- Format response before sending to client

## 3. How do you enable caching in API Gateway?
**Answer:**
Enable caching at the method level to reduce backend load and improve performance.

**Example:**
- Enable cache in method settings
- Set cache TTL

## 4. How do you implement throttling and quota limits?
**Answer:**
Set throttling and quota limits at the API or usage plan level to control request rates and prevent abuse.

**Example:**
- Configure usage plans and API keys

## 5. How do you handle CORS in API Gateway?
**Answer:**
Enable CORS (Cross-Origin Resource Sharing) in API Gateway to allow requests from different origins.

**Example:**
- Add CORS headers in method response settings
