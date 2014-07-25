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

6.Branch的操作

- 新增Branch

新增一個Branch並給定一名稱「testing」

	$>git branch testing

- 切換到「testing」

git會使用「HEAD」紀錄目前所在的Branch,因此需要利用checkout把「HEAD」指定到Branch(testing)

	$>git checkout testing

※合併操作

	$>git checkout -b testing ：開新Branch並切到testing

- 執行合併Branch

切換到master後將testing合併進master

	$>git checkout master
	$>git merge testing

這種合併只需要Commit往前推，叫做fast-foward

再以testing merge master為例：

	$ git merge master
	Updating e786a78..a79f184
	Fast-forward
	 IntroductionForGitCommand.md | 9 +++++++++
	 README.txt                   | 1 +
	 2 files changed, 10 insertions(+)

- 合併衝突時處理

master要merge testing時出現Confict

    $ git merge testing
    Auto-merging README.txt
    CONFLICT (content): Merge conflict in README.txt
    Automatic merge failed; fix conflicts and then commit the result.
    
編輯衝突的檔案

    IEC971020@IEC1-971020-2 ~/GitDir (master|MERGING)
    $ vim README.txt

※注意(master|MERGING)

取得合併的參考方法

    IEC971020@IEC1-971020-2 ~/GitDir (master|MERGING)
    $ git status
    # On branch master
    # Your branch is ahead of 'origin/master' by 9 commits.
    #   (use "git push" to publish your local commits)
    #
    # You have unmerged paths.
    #   (fix conflicts and run "git commit")
    #
    # Unmerged paths:
    #   (use "git add <file>..." to mark resolution)
    #
    #   both modified:  README.txt
    #
    no changes added to commit (use "git add" and/or "git commit -a")

提交合併的內容 

    IEC971020@IEC1-971020-2 ~/GitDir (master|MERGING)
    $ git commit -a
    [master c571de7] Merge branch 'testing'
     
提交後完成合併message後的命令列

    IEC971020@IEC1-971020-2 ~/GitDir (master)
    $ git log
    commit c571de7d757573ee87d85d13f342346c9fbc7fa5
    Merge: 98084b6 83861b5
    Author: PeterCW <hsieh.peterc.w@inventec.com>
    Date:   Fri Jul 25 16:57:05 2014 +0800
    
    Merge branch 'testing'
    
    Conflicts:
    README.txt
    Resolve by PeterCW88

※注意(master)

7.如何Rebase



    