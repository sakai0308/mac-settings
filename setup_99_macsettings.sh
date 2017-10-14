# Finder
	# Finderで開いた時のビューを常にリストビューにする
	defaults write com.apple.Finder FXPreferredViewStyle Nlsv

	# Show Status bar in Finder （ステータスバーを表示）
	defaults write com.apple.finder ShowStatusBar -bool true

	# Show Path bar in Finder （パスバーを表示）
	defaults write com.apple.finder ShowPathbar -bool true

	# Show Tab bar in Finder （タブバーを表示）
	defaults write com.apple.finder ShowTabView -bool true

	# タイトルバーにフルパスを表示
	defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

	# Show the ~/Library directory （ライブラリディレクトリを表示、デフォルトは非表示）
	chflags nohidden ~/Library

	# Show the hidden files （不可視ファイルを表示）
	defaults write com.apple.finder AppleShowAllFiles YES

    # restart to enable configs
    killall Finder

# Dock
	# 通常サイズ
	defaults write com.apple.dock tilesize -int 32

	# Magnificate the Dock （Dock の拡大機能を入にする）
    defaults write com.apple.dock magnification -bool true

	# Wipe all app icons from the Dock （Dock に標準で入っている全てのアプリを消す、Finder とごみ箱は消えない）
	defaults write com.apple.dock persistent-apps -array

	# Dashboardを無効にする
	defaults write com.apple.dashboard mcx-disabled -bool true

	# ウインドウをアプリケーションアイコンにしまう
	defaults write com.apple.dock minimize-to-application -bool true

    # restart to enable configs
    killall Dock

# Keyboard （キーボードで Macを操作する人は必見）
	# Enable full keyboard access for all controls
    defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

	# キーリピート速度を1に設定（小さい程速い）
	defaults write -g KeyRepeat -int 2

	# キーリピート開始速度の早さを10に設定（小さい程早い）
	defaults write -g InitialKeyRepeat -int 15

# Mission Control
	# Hot corners （Mission Control のホットコーナーの設定）
	# Possible values:
	#  0: no-op
	#  2: Mission Control
	#  3: Show application windows
	#  4: Desktop
	#  5: Start screen saver
	#  6: Disable screen saver
	#  7: Dashboard
	# 10: Put display to sleep
	# 11: Launchpad
	# 12: Notification Center
	# Top left screen corner → Put display to sleep （左上 → ディスプレイをスリープ）
	defaults write com.apple.dock wvous-tl-corner -int 10
	defaults write com.apple.dock wvous-tl-modifier -int 0
	# Top right screen corner → Desktop （右上 → デスクトップを表示）
	defaults write com.apple.dock wvous-tr-corner -int 4
	defaults write com.apple.dock wvous-tr-modifier -int 0
	# Bottom left screen corner → Mission Control （左下 → Mission Control）
	defaults write com.apple.dock wvous-bl-corner -int 2
	defaults write com.apple.dock wvous-bl-modifier -int 0
	# Bottom right screen corner → Show application windows （右下 → アプリケーションウィンドウ）
	defaults write com.apple.dock wvous-br-corner -int 3
	defaults write com.apple.dock wvous-br-modifier -int 0

# Safari
	# Enable the `Develop` menu and the `Web Inspector` （開発メニューを表示）
	defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
	defaults write com.apple.Safari IncludeDevelopMenu -bool true
	defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true

	# Enable `Debug` menu （メニュー → デバッグを表示）
	defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

	# Show the full URL in the address bar (note: this will still hide the scheme)
	# アドレスバーに完全なURLを表示
	defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

	# Add a context menu item for showing the `Web Inspector` in web views
	# コンテキストメニューにWebインスペクタを追加
	defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

	# Show Safari's Status Bar （ステータスバーを表示）
	defaults write com.apple.Safari ShowStatusBar -bool true

# Trackpad
	# Enable `Tap to click` （タップでクリックを有効にする）
	defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
	defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
	defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

	# Map bottom right Trackpad corner to right-click （右下をクリックで、副クリックに割り当てる）
	defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
	defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
	defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
	defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

	# スクロール方向をナチュラルじゃない方向に
	defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Menubar
	# バッテリー残量を％表記に
	defaults write com.apple.menuextra.battery ShowPercent -string "YES"

	# 日付と時刻のフォーマット（24時間表示、秒表示あり、日付・曜日を表示）
	defaults write com.apple.menuextra.clock DateFormat -string "M\u6708d\u65e5(EEE)  H:mm:ss"

# Global
	# Disable the "Are you sure you want to open this application?" dialog
	# 未確認のアプリケーションを実行する際のダイアログを無効にする
	defaults write com.apple.LaunchServices LSQuarantine -bool false

	# Require password immediately after the computer went into
	# sleep or screen saver mode （スリープまたはスクリーンセーバから復帰した際、パスワードをすぐに要求する）
	defaults write com.apple.screensaver askForPassword -int 1
	defaults write com.apple.screensaver askForPasswordDelay -int 0

	# ファイルの保存場所のデフォルトをiCloud以外にする
	defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

	# スクリーンショットの保存場所をピクチャフォルダに変更する
	defaults write com.apple.screencapture location ~/Pictures

	# スクリーンショットのファイル名を変更する
	defaults write com.apple.screencapture name "SS"

	# ネットワーク上のフォルダに「.DS_Store」を作成しない
	defaults write com.apple.desktopservices DSDontWriteNetworkStores true

    # restart to enable configs
	killall SystemUIServer
