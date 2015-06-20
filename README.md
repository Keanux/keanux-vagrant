# Keanux-Vagrant

使用 vagrant 在本機建立模擬實際部署的 [Keanux-Personal](https://github.com/Keanux/keanux-personal/) 環境！

## Why use?

1. 還本機一個乾淨
2. 相對於 virtualbox 來說，完全 command line 操作
3. 假如環境被玩壞，可以直接快速重新建立

## Mac setup

### 安裝 Homebrew (請見 [setup.md](https://github.com/Keanux/keanux-personal/blob/master/docs/setup.md#安裝homebrew))

### 使用 Brew Cask 來安裝 virtualbox 與 vagrant
```
brew tap phinze/homebrew-cask
brew install brew-cask
brew cask install virtualbox
brew cask install vagrant
```

## Ubuntu setup

### 安裝 virtualbox 與 vagrant
```
sudo apt-get install virtualbox
sudo apt-get install vagrant virtualbox-dkms
```

### 將 keanux-vagrant 環境 clone 至本機（包含 submodule ）
```
git clone git@github.com:Keanux/keanux-vagrant.git --recursive
```

## 開始使用

```
# 設置 vm 並開啟
vagrant up

# 連入並開始使用 Ubuntu VM
vagrant ssh

# 關閉 vm
vagrant halt

# 移除 vm
vagrant destroy
```

進入 VM 之後，可以參考 [setup.md](https://github.com/Keanux/keanux-personal/blob/master/docs/setup.md#修改設定並啟動網站-1) 來啟動環境！

啟動之後可以在本機造訪 http://192.168.33.20:8080 來使用。

## 使用自己 fork 的 keanux-personal 來開發

```
# 1. fork this project

# 2. clone project
git clone --recursive <url>

# 3. 修改 .gitmodules, 改成自己 fork 的 keanux-personal url

# 4. sync submodule
git submodule sync

# 5. pull
cd keanux-personal
git pull origin master
git checkout FETCH_HEAD
```

# Copyright & License

Copyright (c) 2015 Keanux - Released under the [MIT license](LICENSE).
