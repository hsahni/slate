module PdfMaker
  class << self
    def registered(app)
      app.after_build do |builder|
        begin
         require 'pdfkit'
         kit = PDFKit.new(File.new('build/pdf.html'),
			   :encoding=>"UTF-8",
                           :page_size => "Letter",
                           :margin_top => 10,
                           :margin_bottom => 10,
                           :margin_left => 10,
                           :margin_right => 10,
                           :disable_smart_shrinking => false,
                           :print_media_type => true,
                           :dpi => 300,
 			   :zoom => '1.3'
          )
        file = kit.to_file('build/NCI_GDC_API.pdf')

        rescue Exception =>e
          builder.say_status "PDF Maker",  "Error: #{e.message}", Thor::Shell::Color::RED
          raise
        end
        builder.say_status "PDF Maker",  "PDF file available at build/NCI_GDC_API.pdf"
      end


    end
    alias :included :registered
  end
end

::Middleman::Extensions.register(:pdfmaker, PdfMaker)
