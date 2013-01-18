==================================
Python Ecosystem - An Introduction
==================================

When developers shift from PHP, Ruby or any other platform to Python,
the very first road block they face (most often) is 
a lack of an overall understanding of the Python ecosystem. 
Developers often yearn for a tutorial or resource that explains 
how to accomplish most tasks in a more or less standard way.

每当开发人员从PHP，Ruby或者别的开发环境转换到Python时，所面对的最大问题是缺乏对Python开发的生态环境的充分理解。开发人员非常想得到一份关于完成大多数任务的指南或资源，而不论使用的方法是否规范。

What follows is an extract from the internal wiki at my workplace, 
which documents the basics of the Python ecosystem for 
web application development for our interns, 
trainees and experienced developers who shift to Python from other platforms.



下文所讲到的基本上都来源于我的\ 网站_\ ，那存储着Python环境下对于网络应用开发的一些基本资料，这些资料是为那些从别的平台转到Python开发的实习生，研究生和有经验的开发者准备的。

.. _网站 : http://ikraftsoft.com/

This is not a complete resource. 
My target is to make it **a work in perpetual progress**. 
Hopefully, over time, this will develop into an exhaustive tutorial.


这不是一个完美的文档，我的目标是将它做成一个\ **永久的文档**\ ，但愿这篇文档可以发展成为一个详细的教程。


Intended Audience 目标读者
==========================

This is not about teaching Python - the programming language. 
This tutorial will not magically transform you into a Python ninja. 
I am assuming that you already know the basics of Python. 
If you don't, then stop right now. 
Go read Zed Shaw's brilliant free book Learn Python The Hard Way first and then come back.

这不是一本关于Python的语法书。
这个教程不会教你花哨的Python用法让你成为一名Python黑客。
我默认你已经了解Python的基础用法。如果你不知道，别往下看了。
先去看看Zed Shaw的免费教Python入门的书\ `《Learn Python The Hard Way》`_\ 。

.. _《Learn Python The Hard Way》: http://learnpythonthehardway.org/


I am assuming you are working on Linux (preferably Ubuntu/Debian) or a Linux-like operating system.
Why? Because that is what I know best. 
I have not done any serious programming related work on MS Windows or Mac OS X, other than testing for cross-browser compatibility. 
Check out the following tutorials on how to install Python on other platforms:

我不知道你是不是在用Linux(最好是Ubuntu/Debian)或者是类Linux系统。
为毛？因为Linux是我最了解的系统。
除了测试跨浏览器兼容性以外，我从没在Windows或者Max OS X上面开发过。
下面是如何在不同平台安装Python的教程。

    - `Python 101: Setting up Python on Windows`_
    - `Official documentation for Python on Windows`_
    - `Official documentation for Python on Mac OS X`_

.. _`Python 101: Setting up Python on Windows`: http://www.blog.pythonlibrary.org/2011/11/24/python-101-setting-up-python-on-windows/

.. _`Official documentation for Python on Windows`: http://docs.python.org/using/windows.html

.. _`Official documentation for Python on Mac OS X`: http://docs.python.org/using/mac.html

Search the web for the best possible ways of installing Python on your operating system. I highly recommend asking on Stack Overflow.

去搜索下最适合你平台的Python安装方法。我强烈建立问Stack Overflow。


The version confusion 版本之惑
==============================

TL;DR: Python 2.x is the status quo; Python 3 is the shiny new thing. If you don't care, just skip to Installing Python section below.

Python 2.x是一个稳定的版本，Python 3是个新的版本。如果你不在乎，跳过这段直接看下面的Python安装部分。


When starting with Python, installing version 3.x will seem like a natural first step, but it might not be exactly what you want.

当开始学习Python时，安个3.x的版本看上去应该是第一步，但它可能并不一定是你想要的。

Currently there are two actively developed versions of Python - 2.7.x and 3.x (also called Python 3, Py3K and Python 3000). Python 3 is a different language from Python 2. There are some subtle and some stark semantic and syntactic differences. As of today, Python 2.6/2.7 is the most installed and most used version. Many mainstream and important packages/frameworks/tools/utilities/modules are not yet 100% compatible with Python 3.

现在Python有两个正在开发的版本-2.7.x和3.x(也被成为Python3,Py3k或Python 3000)。
跟Python2相比Python3就是另外一个语言。它们之间存在者或大或小的语法差异。
现今Python2.6/2.7是被安装和应用的最为广泛的版本。
许多的主流代码和一些重要的packages/frameworks/tools/utilities/modules并不支持Python3。

Therefore, the safest choice would be to use 2.x (2.7.x to be more specific). Choose Python 3 only if you need it and/or fully understand the implications.

因此，最安全的选择是使用2.x(2.7最好)版本。如果你完全了解Python3的话在再用它。


`Python 3 Wall of Shame`_ documents the Python 3 compatibility for various packages. Check it thoroughly before deciding to start with Python 3.

`Python 3 Wall of Shame`_ 列出了很多包在Python3中的兼容性。在决定用Python3之前好好看看这个。


.. _`Python 3 Wall of Shame`: http://python3wos.appspot.com/



Which VM to use VM挑选
======================

The Python interpreter or the Python Virtual Machine has a number of different implementations, CPython being the main and most popularly installed implementation. CPython also acts as the reference implementation for other virtual machines.

Python解释器或Python虚拟机有很多种实现，CPython是最主流的实现。CPython同时也是别的虚拟机实现的参考解释器。


PyPy is Python implemented in Python, Jython is implemented in Java and runs on the Java VM and IronPython is the Python implementation for Microsoft .NET CLR.

PyPy是用Python实现的Python解释器，Jython是用Jave实现运行在JVM上的解释器，IronPython是用Microsoft .NET CLR实现的解释器。

Unless it is really, really important to choose otherwise, CPython should be used to avoid any surprises.

除非解释器的选择非常非常重要，我们一般都用CPython。

If all this jibber jabber about versions and virtual machines is giving you headaches, then all you need is CPython version 2.7.x. Trust me on this.

如果上面那些关于版本和虚拟机的废话让你头疼，那你就安装CPython的2.7.x版本，相信我！

Installing Python 安装Python
============================

Most of the Linux/Unix distros and Mac OS X come with Python pre-installed. If yours does not or has an older version, you can install version 2.7.x with the following command:

大多数的Linux/Unix系统的Max OS X都自带Python。如果没有或者版本过低，你可以通过下面的命令安装：

On Ubuntu/Debian and derivatives

Ubuntu/Debian及其衍生系统::

    $ sudo apt-get install python2.7

``sudo`` is a program for Unix-like operating systems that allows users to run programs with the security privileges of another user (normally the superuser, or root). You can learn more about sudo at Wikipedia.

``sudo`` 是一个是类Unix系统的一个命令，它允许用户以别的用户（一般是超级用户，或者root）的权限运行程序。 `更多请查阅Wikipedia`_ 。

.. _`更多请查阅Wikipedia`: http://en.wikipedia.org/wiki/Sudo

On Fedora/Red Hat and similar systems

Fedora/Red Hat及类似系统::

    sudo yum install python2.7

On RHEL you would likely need EPEL repositories enabled for install to work

使用RHEL你可能需要打开EPEL Repositories才能安装。

From this point on, I will be using sudo in my examples; you should replace this with your distro-specific equivalent.

从这起，我将在例子中使用sudo，你需要根据你的系统进行更改。

Understanding the packages
==========================









