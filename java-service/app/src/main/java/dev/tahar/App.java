package dev.tahar;

public class App {

    public static void main(String[] args) {
        new HelloWorldClient("localhost", 50051)
                .greet()
                .ifPresentOrElse(System.out::println, () -> System.out.println("No greeting received"));
    }

}
