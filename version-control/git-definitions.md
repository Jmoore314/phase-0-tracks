# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control allows you to see each change made to a particular file in an organized fashion. This is useful because normally you would only see the end result, but if two people made inputs to a particular file and multiple times per you would not see the work that was completed, when it was completed, or what the initial file was. 

* What is a branch and why would you use one?

A branch is like a copy of a file (the master) in which you are able to edit files safely without making permanent changes to the master. You would particularly use this if the master file is sensitive or if more than one person is doing work within a particular file. After changes are made by one person a second, usually the manager, is able to look throught th echanges and finally decide whether or not to merge the new branch with the master.

* What is a commit? What makes a good commit message?

Commit is like a change notification to let others, or yourself, know what was changed in a particular file. A good commit message has the properties and order: "[Action taken] [Specification of Action]". This order of message properties is especially good when looking through a long list of edits to a particular file attempting to locate a specific action. Ex:

```git commit -m "Add Answers to Git Definitions Quiz"```

* What is a merge conflict?

A merge conflict occurs when the master file is pulled multiple times then edited once, submitted and then edited the original (not the new version that was just submitted) and attempted to submit again, when code dependancies have changed in the newer version-1 while the newer version-2 were depending on the original master.


