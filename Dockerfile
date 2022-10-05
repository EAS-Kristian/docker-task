FROM registry.access.redhat.com/ubi8/ubi:8.1
#ENV id=1
ENV url=https://jsonplaceholder.typicode.com/
#ENV resource=posts
WORKDIR /kris
 
CMD ["./envvariable.sh"]
