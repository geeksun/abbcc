<html>
<head>
    <title>�ϴ�ͼƬ</title>
</head>
<body>

<input type="text" size="4" value="10" name="fileSizeLimit"	id="fileSizeLimit" />
K
<input type="file" name="file1" id="file1" size="40"  onchange="changeSrc(this)" />
<br>
<img src=http://blog.xunuo.com/blog/images/icons/23.gif id="fileChecker" alt="test" />
<script type="text/javascript">
	var oFileChecker = document.getElementById("fileChecker");
	//alert(oFileChecker);
	function changeSrc(filePicker)
	{
	    oFileChecker.src = filePicker.value;
	}
	oFileChecker.onreadystatechange = function ()
	{
	    if (oFileChecker.readyState == "complete")
	    {
	        checkSize();
	    }
	}
	//���ͼƬ�Ĵ�С
	function checkSize()
	{
	    var limit  = document.getElementById("fileSizeLimit").value * 1024;
	    if (oFileChecker.fileSize > limit)
	    {
	        alert("too large");
	    }
	    else
	    {
	        alert("ok");
	    }
	    var srcValue = document.getElementById("file1").value.toLowerCase();
	    if(!/(.jpg$)|(.bmp$)|(.png$)|(.gif$)/.test(srcValue)){
	    	alert("��ʽ����");
	    }
	}
</script>
</body>