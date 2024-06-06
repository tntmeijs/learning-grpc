package dev.tahar;

import dev.tahar.grpc.Hello;
import dev.tahar.grpc.HelloWorldGrpc;
import io.grpc.ManagedChannelBuilder;
import io.grpc.StatusRuntimeException;

import java.util.Optional;

public class HelloWorldClient {

    private final HelloWorldGrpc.HelloWorldBlockingStub blockingStub;

    public HelloWorldClient(final String host, final int port) {
        final var channel = ManagedChannelBuilder.forAddress(host, port)
                .usePlaintext()
                .build();

        blockingStub = HelloWorldGrpc.newBlockingStub(channel);
    }

    public Optional<String> greet() {
        try {
            return Optional.of(blockingStub
                    .greet(Hello.Empty.getDefaultInstance())
                    .getMessage());
        } catch (StatusRuntimeException e) {
            System.out.println("Greet RPC failed: " + e.getStatus());
        }

        return Optional.empty();
    }

}
