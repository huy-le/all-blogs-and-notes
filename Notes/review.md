
branch=feature/simon/JIOS-588-show-worklog

git co $branch
# git pull origin $branch
git co master
# git pull origin master
git merge --no-ff --no-commit $branch


# git reset --hard HEAD

sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcode-select --switch /Applications/Xcode-beta.app/Contents/Developer

https://www.facebook.com/PhotographerRock/?hc_ref=NEWSFEED&fref=nf

~/awscli-saml-auth/.env/bin/pip install --upgrade pyopenssl ndg-httpsclient pyasn1 &&  brew upgrade openssl

git clone https://github.com/huy-le/hippo && cd hippo/hippo && bundle install && bundle exec fastlane test


killall Simulator 2> /dev/null;
killall -9 com.apple.CoreSimulator.CoreSimulatorService 2> /dev/null
xcrun simctl erase all
defaults write com.apple.iphonesimulator ConnectHardwareKeyboard 0
