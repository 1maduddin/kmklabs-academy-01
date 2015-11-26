<html>

    <head>
        <title>Product List</title>
    </head>

    <body>
        <h1>Product List</h1>
    
        <table>
        
            <thead>
                <tr>
                    <th>Code</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
        
            <tbody>
                @foreach($products as $p)
                <tr>
                    <td>{{ $p->code }}</td>
                    <td>{{ $p->name}}</td>
                    <td>{{ $p->description }}</td>
                    <td>&nbsp;</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    
    </body>

    

</html>
