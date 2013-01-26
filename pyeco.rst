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

Understanding the packages 理解包
=================================

The first thing you need to understand is that Python does not have any package management facilities by default. In fact, the very concept of packages in Python is very loose.

你首先需要理解的是Python没有一个默认的包管理设施。事实上，包的概念在Python中是相当弱的。

As you might already know, Python code is organized into modules. A module can be a single file containing just one function or a directory containing one or more sub-modules. The difference between a package and a module is very minimal and every module can be thought of as a package.

可能你已经知道，Python代码被组织为模块。
一个模块可能由包含一个函数的单一文件组成，也可能由包含多个模块的目录组成。
包和模块的区别非常小，并且每个模块都能被理解为包。

So what is the difference (if any) between a module and a package? For that you first need to understand how Python finds the modules.

那么包和模块的区别到底是什么（如果有的话）？为了明白这个，你首先应该明白Python是如何查找模块的。

As with any programming environment, some functions and classes (str, len, Exception, etc.) in Python are available in the global scope(called builtin scope in Python) and others need to be imported by means of an import statement. For example:

如同别的编程环境一样，Python中的一些函数和类（例如str,len,Exception等）在全局（叫做内置函数）都是可用的。
别的就需要通过手动 ``import`` 进来。例如::

    >>> import os
    >>> from os.path import basename, dirname

These packages must be somewhere in your filesystem so that they can be found by the import statement. How does Python know the location of these modules? These locations are set automatically when you install the Python virtual machine and are, almost always, dependent on the target platform.

这个包一定存在你的机子上，这样才能被import语句导入。但Python是如何知道这些模块的位置呢？
这些位置信息在你安装Python虚拟机时就被自动设置好了，并且依赖于你的目标平台。

The package path is always available for your inspection in sys.path. Here is what it looks like on my laptop which runs Ubuntu 11.10 Oneric Ocelot.

包的路径可以在sys.path中查询。下面是在我的笔记本上的结果，运行环境是Ubuntu 11.10。 ::

    >>> import sys

    >>> print sys.path

    ['',

     '/usr/lib/python2.7',

     '/usr/lib/python2.7/plat-linux2',

     '/usr/lib/python2.7/lib-tk',

     '/usr/lib/python2.7/lib-old',

     '/usr/lib/python2.7/lib-dynload',

     '/usr/local/lib/python2.7/dist-packages',

     '/usr/lib/python2.7/dist-packages',

     '/usr/lib/python2.7/dist-packages/PIL',

     '/usr/lib/python2.7/dist-packages/gst-0.10',

     '/usr/lib/python2.7/dist-packages/gtk-2.0',

     '/usr/lib/pymodules/python2.7',

     '/usr/lib/python2.7/dist-packages/ubuntu-sso-client',

     '/usr/lib/python2.7/dist-packages/ubuntuone-client',

     '/usr/lib/python2.7/dist-packages/ubuntuone-control-panel',

     '/usr/lib/python2.7/dist-packages/ubuntuone-couch',

     '/usr/lib/python2.7/dist-packages/ubuntuone-installer',

     '/usr/lib/python2.7/dist-packages/ubuntuone-storage-protocol']

This will give you the list of directories where Python will search for a given package. It starts at the top and keeps going downwards until a name match is found. This means if two different directories contain two packages with the same name, the package search will always stop at the first absolute match encountered and will never go further down the list.

这里给出了Python搜索包的路径。它将从最上面开始找，直到找到一个名字相符的。
这表明如果两个不同的路径分别包含了两个具有相同名字的包，搜索将在找到第一个名字的时候停止，然后将永远不会往下查找。


As you might have guessed by now, this package search path can easily be hacked to ensure that Python picks your packages first. All you need to do is:

正如你所猜的，包搜索路径很容易被劫持，为了确保Python首先载入你的包，所需做的如下： ::

>>> sys.path.insert(0, '/path/to/my/packages')

While this approach comes in handy in many situations, you must always bear in mind that it is very easy to abuse it. Use it if you have to but don't abuse it.

尽管这个方法在很多情况下都很好用，但一定要小心不要滥用。 **只有当必要时再使用！不要滥用！**


The site module controls the method by which these package search paths are set. It is imported automatically at the time of initialization of Python virtual machine. If you would like to understand the process involved in more detail, head over to it's official documentation page.

``site`` 模块控制包的搜索路径。当Python虚拟机初始化时它会子同被导入。如果你想了解更多信息，请看 `官方文档`_ 。

.. _`官方文档`: http://docs.python.org/library/site.html


The PYTHONPATH PYTHONPATH变量
-----------------------------

``PYTHONPATH`` is a environment variable that can be used to augment the default package search paths. Think of it as a ``PATH`` variable but specifically for Python. It is simply a list (not a Python list like ``sys.path`` ) of directories containing the Python modules separated by :. It can be simply set as follows:

``PYTHONPATH`` 是一个用来增加默认包搜索目录的环境变量。可以认为它是对于Python的一个特殊的 ``PATH`` 变量。
它仅仅是一个通过 ``:`` 分割，包含Python模块目录的列表（并不是类似于 ``sys.path`` 的Python list）。
它可能就类似下面这样： ::

    export PYTHONPATH=/path/to/some/directory:/path/to/another/directory:/path/to/yet/another/directory

In some situations you will not want to overwrite the existing PYTHONPATH, but just append or prepend to it.

有时候你可能并不想覆盖掉现存的 ``PYTHONPATH`` ，而仅仅是希望添加新目录到头部或尾部。 ::
    
    export PYTHONPATH=$PYTHONPATH:/path/to/some/directory    # Append
    export PYTHONPATH=/path/to/some/directory:$PYTHONPATH    # Prepend

Generally, you will put this inside the shell startup files like .bashrc, .zshrc, etc.

一般来说，你需要把它放在shell启动文件类似 ``.bashrc`` , ``.zshrc`` 中。

PYTHONPATH, sys.path.insert and similar techniques are hack and generally it is better to stay away for these hacks. Use them, if they solve your local development environment problems but your production environments should not depend on such hacks. There are more elegant ways of accomplishing the same effect, on which I will elaborate in a moment.


``PYTHONPATH`` ， ``sys.path.insert`` 这些方法并非完美，我们最好也不要用这些方法。
使用它们，你可能可以解决本地的开发环境问题，但它在别的环境下也许并不适用。
有很多种方法可以达到这个效果，在下面我将一一阐述。

Now that you understand how Python finds the installed packages, we can revisit our original question. What is the difference between a module and a package? A package is just a module or a collection of modules/sub-modules, and generally comes compressed inside a tarball, which contains 1) information on dependencies - if any 2) instructions to copy the files to the standard package search location and 3) compile instructions - if it contains code that must be compiled before installation. That's it.

我们现在明白的Python如何找到安装的包路径，现在让我们回到开始那个问题。
模块和包的区别到底是什么？包是一个模块或模块/子模块的集合，一般情况下被压缩到一个压缩包中。
其中包含1)依赖信息 2)将文件拷贝到标准的包搜索路径的指令。3)编译指令(如果在安装前代码必须被编译的话)。
就这些东西！

Third party packages 第三方库
=============================

Right from the start, for any serious programming with Python you will need to install third party packages for various tasks.

从一开始，如果要做一些实际Python开发，你一定会用到一些第三方包。

On a Linux System there are at least 3 ways of installing third party packages.

1.using the package management system of your distro (deb, rpm, etc.)

2.by means of various community-developed tools like pip, easy_install, etc.

3.installing from the source files

在Linux系统上至少有3种安装第三方包的方法。

1. 使用系统自带的包管理系统(deb, rpm, 等)
2. 通过社区开发的各种工具，例如 ``pip`` ， ``easy_install`` 等
3. 从源文件安装

All three ways, almost always, accomplish the same thing viz. install dependencies, compile code if needed and copy the modules contained inside a package to the standard package search locations.

这三个方面，几乎完成同样的事情。即：安装依赖，编译代码（如果需要的话），将一个包含模块的包复制的标准软件包搜索位置。


While #2 and #3 will work almost unchanged on any operating system, I will once again point you to Stack Overflow to find out other ways of installing third party packages on your target platform.

第二步和第三步在所有的操作系统上基本相同。
我再次希望您可以在 `Stack Overflow`_ 上找到你的平台的第三方包安装方法。

.. _`Stack OverFlow`: http://www.stackoverflow.com/


Where to find third party packages 在哪找第三方包？
---------------------------------------------------

Before you can install third party packages, you will have to find them. There are more than a few ways of finding packages.

1.the modules packaged for your distro-specific package management system

2.Python Package Index (or PyPI)

3.Various source code hosting services like Launchpad, GitHub, BitBucket, etc.

在安装第三方包之前，你首先要找到他们。以下是几种方法：

1. 你的系统包管理器中的发行版专用包。
2. `Python Package Index (or PyPI)`_
3. 大量的源代码服务器，例如 `Launchpad`_, `GitHub`_, `BitBucket`_ 等 

.. _`Python Package Index (or PyPI)`: http://pypi.python.org/pypi
.. _`Launchpad`: https://launchpad.net/
.. _`GitHub`: http://github.com/
.. _`BitBucket`: https://bitbucket.org/


Installing with distro-specific package management systems 通过发行版专用包安装
-------------------------------------------------------------------------------

Installing packages using the distro package management system is simply issuing the command or using whatever GUI app you use to install other apps. E.g., to install simplejson (a JSON parsing utility) on an Ubuntu system, you would issue the following command:

通过包管理器安装包安装包就像使用命令行或者GUI安装别的软件那样简单。
例如在Ubuntu中安装 ``simplejson`` ::
    
    $ sudo apt-get install python-simplejson

Installing with pip 通过pip安装
-------------------------------

easy_install has mostly fallen out of favor. We will only concentrate on pip, which is a replacement for easy_install.

easy_install渐渐不再流行。我们将主要介绍pip，它是easy_install的一个替代品。

pip is a tool for installing and managing Python packages, such as those found in the Python Package Index. pip is not installed with the Python virtual machine, therefore we need to install it first. On Linux, I generally install it as follows:

pip是一个用来安装和管理Python包的工具，就如同Python Packet Index一样。
pip并没有随着Python一起安装，因此我们需要先安装它。Linux下，一般这样安装： 

::

    $ sudo apt-get install python-pip

Before installing any other package I always upgrade pip to the latest version available in PyPI as Ubuntu repositories are generally behind PyPI. I upgrade pip with pip itself.

在安装任何其他包之前，我总是通过PyPI将pip升级到最新版本的,
Ubuntu软件库中的版本普遍落后的PyPI。我通过pip升级pip它自己。

::

    $ sudo pip install pip --upgrade

Now, to install any python package, you would run the pip install package-name command. Therefore, to install ``simplejson`` you would run the following command:

现在如果需要安装任何包，你可以运行pip命令。
所以可以通过下面命令安装 ``simplejson``: ::

$ sudo pip install simplejson

Removing packages is just as easy.

删除包也很简单。 ::

    $ sudo pip uninstall simplejson






