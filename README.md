# **MarkDown帮助文档**



# 1.Markdown 标题

## 使用# 号 标记

```
# 一级标题
## 二级标题
### 三级标题
#### 四级标题
##### 五级标题

```

# 2.Markdown 段落、字体、列表

### markdown段落

markdown段落没有特殊的格式，直接编写文字就好，段落的换行是使用两个以上空格加上回车。

```
RUNOOB.com  
BAIDU.com  

```

### markdown字体

markdown可以使用以下几种字体：

```
*斜体文本*
_斜体文本_
**粗体文本**
__粗体文本__
***粗斜体文本***
___粗斜体文本___
```

* *斜体文本*

* **粗体文本**

  * 列表嵌套1

  * 列表嵌套2

* ***粗斜体文本***

```
无序列表使用* 、 + 或者 -作为列表标记
有序列表使用数字并机上 . 号来表示
列表嵌套只需在子列表中的选项添加四个空格即可。
```

## 3.Markdown区块

makrdown区块引用是在段落开头使用 > 符号，然后后面紧跟一个空格符号

```
> 区块引用
>> 菜鸟教程
>>> 学的不仅是技术更是梦想
```

> 区块引用
>
> > 菜鸟教程
> >
> > > 学的不仅是技术更是梦想



##  4.Markdown代码

+ 如果是输入一个函数或片段的代码可以用反引号把它包起来 ` ,例如

```
`printf()` 函数
```

`printf()` 函数

+ 代码区块

  代码区块使用4个空格或者一个制表符（tab），实例：

  ```
  	<?php
  	echo 'RUNOOB';
  	function test(){
  		echo 'test'
  	}
  ```

  ​    <?php

  ​    echo 'RUNOOB';

  ​	function test(){

  ​	echo 'test'

  ​	}

+ 使用```包裹一段代码，并指定一种语言（也可以不指定）

  ```
  ​```javascript
  $(document).ready(function)(){
     alert('RUNOOB')
  }
  ```

  ```javascript
  $(document).ready(function)(){
      altert('RUNOOB')
  }
  ```

  ```java
  Class Test{
      public static void main(String args[]){
          println("Hello World");
      }
  }
  ```

  

## 5.Markdown链接

+ 链接使用方法如下：

```
[链接名称](链接地址)
或者
<链接地址>
```

例如：

任务分配地址[JIRA](https://www.atlassian.com/software/jira)

+ 高级链接

  通过一个变量来设置一个连接，变量赋值在文档末尾进行。

  ```
  资料的地址[资料][1]
  [1]:
  
  ```

  JIRA百度百科的地址[百度百科][1]

  [1]:https://baike.baidu.com/item/JIRA/6608817?fr=aladdin



## 6.Markdown图片

markdown图片语法格式如下

```
![alt 属性文本](图片路径)
![alt 属性文本](图片路径 “可选标题”)
```

## 7.Markdown表格

Markdown制作表格使用 | 来分隔不同的单元格，使用 - 来分隔表头和其他行，语法格式如下：

```
| 表头   |  表头 |
| ---—  |  ---- |
| 单元格 |  单元格 |
| 单元格 | 单元格 |
```



| 软件类型       | 可选软件   | 推荐版本 |
| -------------- | ---------- | -------- |
| 中间件（应用） | **Tomcat** | 11       |

Note: react参考[这里](https://react.docschina.org/)

## 8. Markdown高级技巧

### 支持的HTML元素

不在Markdown涵盖范围之内的标签，都可以直接在文档里面用HTML编写。

目前支持的HTML元素有： 

```
<kbd><b><i><em><sup><br>
```

等,如：

使用<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Del</kbd>重启电脑

### 转义

Markdown使用了很多特殊符号来表示特定的意义，如果需要显示特定的符号则需要使用转义字符，Markdown使用反斜杠转义特殊字符：

```
**文本加粗**
\*\*正常显示星号\*\*
```

**文本加粗**

\*\*正常显示星号\*\*

* Markdown支持一些特殊符号前面加上反斜杠来帮助插入普通的符号：

  ```
  \ 反斜杠
  ` 反引号
  * 星号
  _ 下划线
  {} 花括号
  () 小括号
  #  井字号
  + 加号
  - 减号
  . 英文句点
  ！ 感叹号
  ```

  

### 公式

当你需要在编辑器中插入数学公式是，可以使用两个美元符$$包裹 Tex 或 LaTeX格式的数学公式来实现。提交后，问答和文章页会根据需要加载Mathjax对数学公式进行渲染。如：

```
$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix} 
\mathbf{i} & \mathbf{j} & \mathbf{k} \\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0 \\
\end{vmatrix}
${$tep1}{\style{visibility:hidden}{(x+1)(x+1)}}
$$

```

显示效果如下
$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix} 
\mathbf{i} & \mathbf{j} & \mathbf{k} \\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0 \\
\end{vmatrix}
${$tep1}{\style{visibility:hidden}{(x+1)(x+1)}}
$$


## 用HTML语言实现表格行合并

``` html
<table>
 <tr>
     <th>软件类型</th>
     <th>可选软件</th>
     <th>推荐版本</th>  
 </tr>
 <tr>
     <td >中间件（应用）</td>
     <td >Tomcat</td>
     <td >11</td>
 </tr>
 <tr >
     <td rowspan="3">数据库</td>
     <td>Mysql</td>
     <td>8</td>
 </tr>  
 <tr>
     <td>多啦A梦</td>
     <td>V8</td>
 </tr>
 <tr>
     <td>Tidb</td>
     <td>4.0</td>
 </tr>
 <tr>
     <td >内存数据库</td>
     <td >Redis</td>
     <td > 5.0.8</td>
 </tr> 
 <tr>
     <td >操作系统</td>
     <td >centos</td>
     <td > 5.5</td>
 </tr> 
 <tr >
     <td rowspan="3">基础开发套件</td>
     <td>spring-cloud</td>
     <td>2.1.0</td>
 </tr>  
 <tr>
     <td colspan="2">react</td>
 </tr>
 <tr>
     <td>spring-boot</td>
     <td>2.2.0 </td>
 </tr> 
</table>

```

<table>
 <tr>
     <th>软件类型</th>
     <th>可选软件</th>
     <th>推荐版本</th>  
 </tr>
 <tr>
     <td >中间件（应用）</td>
     <td >Tomcat</td>
     <td >11</td>
 </tr>
 <tr >
     <td rowspan="3">数据库</td>
     <td>Mysql</td>
     <td>8</td>
 </tr>  
 <tr>
     <td>多啦A梦</td>
     <td>V8</td>
 </tr>
 <tr>
     <td>Tidb</td>
     <td>4.0</td>
 </tr>
 <tr>
     <td >内存数据库</td>
     <td >Redis</td>
     <td > 5.0.8</td>
 </tr> 
 <tr>
     <td >操作系统</td>
     <td >centos</td>
     <td > 5.5</td>
 </tr> 
 <tr >
     <td rowspan="3">基础开发套件</td>
     <td>spring-cloud</td>
     <td>2.1.0</td>
 </tr>  
 <tr>
     <td colspan="2">react</td>
 </tr>
 <tr>
     <td>spring-boot</td>
     <td>2.2.0 </td>
 </tr> 
</table>





### 画流程图、时序图、甘特图
* 网上搜索
