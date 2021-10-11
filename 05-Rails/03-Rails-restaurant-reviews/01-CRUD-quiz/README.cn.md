## 背景和目标

在我们学习增删查改（CRUD）的后续之前，我们先来看一些昨天学习的模型（Model）和增删查改（CRUD）的基本原则。

## 详细说明
先看一下`lib/quiz.rb`文件。你会看到里面有一些方法的小测验，来测试迄今为止学过的rails知识。你需要确保每一个方法都返回了正确的信息，并通过了这些测试！

⚠️ 在运行 `rake`命令之前，尝试回答这些问题。

### 问题 1
数组`Array`有4个元素，组成了`CRUD`的首字母缩写。把修改该数组的每一个元素改成`CRUD`每个字母所代表的具体动词。

### 问题 2
返回一个字符串`String`，该字符串的内容是一个可以在终端运行的命令。这条命令会生成一个`Restaurant`模型，这个模型有两个字段name(`String`，数据类型是字符串) 和stars(`Integer`，数据类型是整数)。

### 问题 3
修改数组`Array`，该数组的2个元素是运行模型生成器生成`Restaurant` 模型（来自上一题）之后创建的两个文件的路径。使用`YYYYMMDDHHMMSS`做为任意的时间戳。

### 问题 4
我们要把7个增删查改`CRUD`的路由熟记于心，但是我们不想在路由配置文件里把它们一条一条写出来。
返回一个字符串`String`，该字符串的内容是我们需要添加到`config/routes.rb`文件里用于给`Restaurant`模型添加所有7个增删查改`CRUD`路由的一行代码。

### 问题 5
如果我们有7个增删查改`CRUD`的路由，我们也需要在控制器`RestaurantsController`里有7个实例方法。
返回一个数组`Array`，数组元素是与7个增删查改`CRUD`的路由相对应的动作。

## 学习点

- 学会增删查改`CRUD`路由的基础知识
- 如何在应用里生成模型model？