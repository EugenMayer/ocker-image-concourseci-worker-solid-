FROM concourse/concourse
ADD worker_wrapper.sh /usr/local/bin/worker_wrapper
RUN chmod +x /usr/local/bin/worker_wrapper
ENTRYPOINT ["/usr/local/bin/worker_wrapper"]
CMD ["land-worker"]
