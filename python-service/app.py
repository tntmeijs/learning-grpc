from concurrent import futures
import grpc
import proto.dev.tahar.hello_pb2 as hello_pb2
import proto.dev.tahar.hello_pb2_grpc as hello_pb2_grpc

class HelloWorldServicer(hello_pb2_grpc.HelloWorldServicer):
    def Greet(self, request, context):
        return hello_pb2.Greeting(message="Hello, gRPC!")

def main():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    hello_pb2_grpc.add_HelloWorldServicer_to_server(HelloWorldServicer(), server)
    server.add_insecure_port("[::]:50051")
    server.start()
    server.wait_for_termination()

if __name__ == "__main__": 
    main()
