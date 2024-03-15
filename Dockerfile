FROM nginx:latest

RUN echo "testing"

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]