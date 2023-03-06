- I have deployed this app on https://render.com/.
- To verify the feature, join this slack group `https://join.slack.com/t/notifier-twg6267/shared_invite/zt-1qjtf39qa-MkPFlP3tncCkwl~oRvwauQ` and use this url `https://honeybadger.onrender.com/slack_notification` in postman to send the spam payload. Make sure to add `Content-Type: application/json` header in postman.
- After the request is submitted, in spam channel of the above slack workspace we will receive an alert.

# Deploy the app

- This app can be deployed `render.com`.

- In order 

- First we need to create a slack workspace to complete the deployment, we can either link the above app with my slack workspace or create your own workspace.

- If you create your own workspace, then create a `spam` channel first of all.

- Create a bot and give all the write permissions.

- Copy the api token and save it for future use.

- Delete the `credentials.yml.enc` file.

- Execute this command on dev mode inside project dir, `EDITOR=vim rails credentials:edit --environment production`.

- Paste the following:-

```
secret_key_base: 0362250380ff890d520e5183b0ce401c851ea828d4ae053b83bf1ddabcd56390e340ba5d1094d0c12de33db9c178a5cd0ae72b0306d6b0efcb35d882d2b68417
SLACK_API_TOKEN: (your copied api token)
SLACK_SPAM_CHANNEL_NAME: spam
```

- Now, follow this doc https://render.com/docs/deploy-rails#deploy-manually to deploy the app, make sure you enter the prod's master.key value present as `RAILS_MASTER_KEY` env variable in render.

- Follow the guide and deploy the app. Use your deployed app's url and use it in postman to test.

- In order to link your app to my slack workspace, ping me on the above slack channel so that I can provide you with my slack api token.

