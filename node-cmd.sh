cd ExpressSite && docker run -it -p 8080:3000 -v $(pwd):/var/www -w "/var/www" node:12 /bin/bash
