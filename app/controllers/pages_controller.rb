class PagesController < ApplicationController

  def issue_327
    respond_to do |format|
      format.pdf do
        render :pdf => 'oferta',
          :template => 'templates/show_offer.pdf.erb',
          :layout => "layouts/templates.html.erb",
          :print_media_type => true,
          :page_size => "A4",
          :disable_smart_shrinking => true,
          :footer => { :right => '[page] of [topage]' }
      end
    end
  end

end
