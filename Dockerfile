FROM temporalio/admin-tools:1.23
EXPOSE 7233
EXPOSE 8233
ENTRYPOINT ["/usr/local/bin/temporal", "server", "start-dev", "-p", "7233", "--ip", "0.0.0.0"]
CMD ["--namespace", "test"]
