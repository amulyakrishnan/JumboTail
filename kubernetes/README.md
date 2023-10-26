Istio:
1. Connect and Secure Microservices.
2. Control various API calls between services & traffic flow between them.
3. Provide Auto-tracing, logging, and monitoring of all Microservices visualizes what’s happening under the hood.

Istio Setup: https://istio.io/latest/docs/setup/getting-started/

Canary Deployment Strategy:

Canary deployment strategy where we deploy the newer version of application into another set of server groups however unlike instead of switching traffic for end users from older version to newer version in one go, we rollout the newer version for smaller subset of users and gradually increase the traffic from older version to newer version

Build docker images from both versions of application
- Create docker images from “feature/v1” and “feature/v2” branch using 

Monitor using below command:
while true; do curl -s http://canary-deployment.test.com |grep label;sleep 0.1;done

For monitoring and Logging:
We can use ELK(Elasticsearch and Kibana) stack for logging and Prometheus and Grafana for monitoring