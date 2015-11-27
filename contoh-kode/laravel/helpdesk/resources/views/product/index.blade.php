<html>

    <head>
        <title>Product List</title>
    </head>

    <body>
        <h1>Product List</h1>

        <a href="{{ route('product.create') }}">Add New Product</a>
    
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
                    <td>
                      <a href="{{ route('product.edit', ['id' => $p->id]) }}">edit</a>
                      <a href="{{ route('product.destroy', ['id' => $p->id])
                      }}">delete</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    
    </body>

    

</html>
