FROM nginx:alpine
COPY ./my-svelte-app /usr/share/nginx/html
EXPOSE 2007/tcp