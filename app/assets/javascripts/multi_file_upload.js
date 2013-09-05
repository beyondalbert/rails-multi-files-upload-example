// 多附件上传的初始化
var swfu;
function initMultiFileObj(){
		var post_params_hash = {};
		post_params_hash[session_key_name] = cookies;
		post_params_hash["authenticity_token"] = authenticity_token;
    var settings = {
      flash_url : "/swfupload.swf?v=1",
      upload_url: "/files/upload_file",
      post_params: post_params_hash, 
      file_size_limit : "50 MB",
      file_types : "*.*",
      file_types_description : "All Files",
      file_upload_limit : 100,
      file_queue_limit : 0,
      custom_settings : {
        progressTarget : "multiFilesContainer",
        cancelButtonId : "btnCancel"
      },
      debug: false,

      // Button settings
      
      button_width: "100",
      button_height: "30",
      button_placeholder_id: "multiFilesBtn",
      button_text: '<span class="theFont">上传文件选择</span>',
      button_text_style: ".theFont { font-size: 12; }",
      button_text_left_padding: 12,
      button_text_top_padding: 3,
      
      // The event handler functions are defined in handlers.js
      file_queued_handler : fileQueued,
      file_queue_error_handler : fileQueueError,
      file_dialog_complete_handler : fileDialogComplete,
      upload_start_handler : uploadStart,
      upload_progress_handler : uploadProgress,
      upload_error_handler : uploadError,
      upload_success_handler : uploadSuccess,
      upload_complete_handler : uploadComplete
    };

    swfu = new SWFUpload(settings);
};
