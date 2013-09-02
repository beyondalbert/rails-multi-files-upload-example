class FilesController < ApplicationController
  def index
  end

	# 用于接受单个附件上传的url接口
  def upload_file
		a = Attachment.create(name: params['Filename'], path: "files/" + params['Filename'])
		respond_to do |format|
			format.js do
				render :json => {"file_id" => a.id}
			end
		end
  end

	# 处理多附件上传的表单
  def upload_files
		params[:des].each_pair do |key, value|
			attachment = Attachment.find(key.to_i)
			attachment.note = value
			attachment.save
		end
		redirect_to :controller => "files", :action => "index"
  end
end
