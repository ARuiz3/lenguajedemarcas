for $libro in doc("books.xml")/bib/libro
return <tr><td>{ data($libro/titulo) }</td> <td>{data($libro/Editorial)}</td><td>{data($libro/Precio)}</td></tr>