# Introduction

Heya! 👋

I'm building a super simple prototype application to learn how [gRPC](https://grpc.io/) works, how to use it, and in what way I might be able to use this in my day-to-day job.

At work, I develop event-driven microservice systems using Kafka. While they're pretty cool, we're running into some limitations of Kafka when it comes to dealing with synchronous, sequential, operations. Implementing a request-response system on Kafka adds a fair bit of overhead due to the added complexity of asynchronous processing. Additionally, when you deal with user interaction over REST endpoints, you're almost forced to implement polling or callbacks of sorts.

We're currently using REST to communicate synchronously where needed, but the additional maintenance overhead of adding schemas and enforcing verifications is becoming a bit annoying. After hearing about gRPC from a colleague of mine, I figured I'd just give it a shot to see if this could potentially be something we could use at work.

This repository simply contains a bunch of random test code to see how gRPC works. You're free to use this as a reference, but keep in mind that I'm just messing around. The code is provided as-is with no support or any guarantees.

Happy hacking!

# Project set-up
My main goal is to use gRPC in a situation that closely resembles the challenges I face at work. I chose to create two services, where one acts as the server and the other as the client. The `java-service` application is only meant to be used as a client, wheras the `python-service` application only acts as a server.
