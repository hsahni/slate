
         require 'pdfkit'
         kit = PDFKit.new(File.new('build/pdf-test.html'),
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
        file = kit.to_file('build/api.pdf')

 

