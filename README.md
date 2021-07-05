Rapport

Ruby version 2.6.1

Rapport is a Ruby application designed to improve the performance of teams and their communication.

To contribute, feel free to clone this repository.

To work on this application locally, after cloning:
1. Change the gem-file to remove gem 'pg' and replace with gem 'sqlite3'
2. Run Bundle
3. Run Rails db:migrate
4. Run Rails db:seed
5. Obtain a google oauth key and secret
6. Add a .env file and paste your key + secret in that file (follow oauth docs for more detail)
7. run rails s
8. Open a browser and navigate to localhost://3000

Enjoy

License
MIT