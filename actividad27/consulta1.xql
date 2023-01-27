for $libro in doc("books.xml")/bib/libro
return data($libro/titulo)