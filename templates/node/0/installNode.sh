cd /app

if [ ! -d /app/.git ]; then
    git clone ${git_url} /app -b master

else
    git pull
fi

cd /app
ls -l


npm set progress=false
npm --cache-min=600 install
grunt

pm2-docker app.js
