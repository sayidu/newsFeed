 ### NewsApp Feed
 ``` 
 Problem Set: Design a well tested rails app  using `https://newsapi.org/` that allows you to fetch news from 
 a given category if the category does not exist.
 eg `adadsfasfhjsfnews`,  return an appropriate error to the user 
 ```

### Setup

1. Get the code.

        % git clone git@github.com:sayidu/newsFeed.git

2. Setup your environment.

        % bundle install

3. Configure the app

        % vim .env

   At minimum, you will need:
   * NEWS_API_ACCESS_TOKEN
 
4. Start Rails Server

        % bin/rails server

5. Verify that the app is up and running.

        % open http://localhost:3000

### UI Example

```

Valid Category Input: health

Output should be: A list of health articles displayed.

```
### Testing

1.  With the setup steps above, completed. 
2. `cd` into the cloned folder
4. run `rspec`
