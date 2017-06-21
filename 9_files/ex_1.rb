def filechanger fname, changes
  File.open fname,'a+' do |f|
    f << changes
  end
  puts File.read fname
end

filechanger "foob.txt", "# END OF FILE#"
