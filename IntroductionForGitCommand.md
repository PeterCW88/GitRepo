#Introduction for Git Command#

Git Local Operations
Git本地端版本控管會分為三個階段：

- working directory
- staging area
- git directory(repository)

會產生出三種動作：

第一種(staging files)：利用add(把檔案加到stage)

第二種(commit)：利用commit(把檔案放到local repository)

第三種(checkout the project)：利用checkout將local repository帶回工作目錄(覆蓋工作目錄檔案)
 
1.開始使用Git
在欲進行版本控管的目錄裏執行

    $>git init

裏面會產生一個.git的目錄包含所有套件庫需要的資訊

2.新增一個檔案README.txt,然後提交變更

    $>touch README.txt
    $>git add .
    $>git commit -m "Initial commit"

3.觀察File Status

    $>git status
    
4.檢視Commit log

	$>git log

按q離開

5.如何處理被改爛的版本

- 改變最後一次的Commit:

會提示重新修改message後覆蓋上次commit的內容

	$>git commit --amend

- 把Stage的檔案給Unstage:

退回工作目錄

    $>git reset HEAD filename

- 把修改過的檔案回到未修改狀態：
 
取回目前最新版本的local repository檔案
並覆蓋現存工作目錄的檔案

	$>git checkout -- filename


