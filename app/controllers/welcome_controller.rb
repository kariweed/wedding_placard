class WelcomeController < ApplicationController
  def index

  	respond_to do |format|
      format.html
      format.pdf do
        # create a pdf from string using templates, layouts and content option for header or footer
        # pdf = WickedPdf.new.pdf_from_string(
          # render_to_string('night_manager_reports/show.pdf.erb', :layout => 'pdf.html.erb')
        # )
        # render :text => pdf
        render  :pdf => "downloaded_pdf", 
                :template => 'welcome/index.pdf.erb',
                :layout => 'pdf.html.erb', 
                # :disposition => 'attachment',
                :save_only => false,
                :show_as_html => params[:debug].present?, 
                :print_media_type => true, 
                :disable_smart_shrinking => false
      end
    end    

  end

  def about
  end 
end
