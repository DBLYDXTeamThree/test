$(
	function ()
	{
		// 创建一个上传参数
		var uploadOption =
		{
		    action: "buildupload",    // 提交目标
		    
		    name: "file",            // 服务端接收的名称
		    
		    dataType: "json",
		    
		    autoSubmit: true,        // 是否自动提交
		    
		    // 开始上传文件
		    onSubmit: function (file, extension)
		    {
		    	this.setData({build_projectlist_id: $("#buildid").val()});
		    	
		        // 可以来一个“正在上传”的提示
		    	alert("上传中...");
		    },
		    
		    // 上传完成之后
		    onComplete: function (file, response) 
		    {
		        // 文件上传之后，比如返回文件的URL，或者跳转到其它页面…
		    	alert("完成");
		    	
		    	loadBuildProjectList($("#buildid").val());
		    }
		};

		// 初始化图片上传框
		new AjaxUpload("#button", uploadOption);
		
		$("#delBtn").click
		(
			function ()
			{
				if (confirm("请确认是否要删除这些节点"))
				{
					var checkBoxes = $("#content1 :checkbox");
					
					var checkBox = null;
					
					var idList = [];
					
					$.each
					(
						checkBoxes,
						
						function (i)
						{
							checkBox = $(checkBoxes[i]);
							
							if (checkBox.prop("checked"))
							{
								idList.push(checkBox.parent().parent().data("id"));
							}
						}
					);
					
					ajax4Json
					(
						"delBuildAttachs",
						
						function (data)
						{
							loadBuildProjectList($("#buildid").val());
						},
						
						{idList: idList}
					);
				}
			}
		);
	}
);

	
			
					
				
			
		
			
$(".attachBuild").click
(
	function ()
	{
		
	    $("#buildid").val($(this).prop("id"));
		loadBuildProjectList($(this).prop("id"));//查build附件表
	}
);
			
		
	


function loadBuildProjectList(id)
{	
	ajax4Json
	(
		"loadBuildProjectList",

		function (data)
		{
			var thead = $("#content1").children(":first");

			$("#content1").empty();

			$("#content1").append(thead);
			
			var attachList = data["build_project_attachList"];
			
			
			var keyList = ["file_name"];

			$.each
			(
				attachList,

				function(i)
				{
					var attach = attachList[i];
					
					var tr = createDataRow(attach, keyList, true)
					.append
					(
							"<th><a class='download' style='color:#666; cursor:pointer;'>下载</a></th>"
					);

					$("#content1").append(tr);
				}
			);
			
			$(".download").click
			(
				function ()
				{
					download("builddownload", {build_projectlist_id: $(this).parent().parent().data("id")});
				}
			);
			
			$(".table tr:odd").css("background-color","#fff");
		},
		
		{build_project_id: id}
	);
}