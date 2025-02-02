
# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd .vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m "deploy $(date '+%Y-%m-%d %H:%M:%S')"

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:uicheung/uicheung.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git branch -M gh-pages
git push -f git@github.com:uicheung/uicheung.github.io.git gh-pages

cd -
