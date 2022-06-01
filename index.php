<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <form>
            <!--<select name="category">
                <option value="category1">Category 1</option>
                <option value="category2">Category 2</option>
                <option value="category3">Category 3</option>
            </select>-->
            <input type="radio" name="category" value="category1" id="category1">
            <label for="category1">Category 1</label>
            <input type="radio" name="category" value="category2" id="category2">
            <label for="category2">Category 2</label>
            <input type="radio" name="category" value="category3" id="category3">
            <label for="category3">Category 3</label>
            <input type="text" class="input-search" id="searchbar" name="searchbar" placeholder="Cerca utenti" onkeyup="searchq();" autocomplete="off">
        </form>   
        <div class="dropdown">
            <div id="output" class="dropdown-content" style="text-align: center;"></div>
        </div> 
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function searchq()
        {
            var searchTxt = $("input[name='searchbar']").val();
            var searchCategory = $("input[name='category']:checked").val();
            if(searchTxt != null)
            {
                $.post("search.php" , {searchVal: searchTxt,category: searchCategory} , function(output)
                {
                    $("#output").html(output);
                });
            }
        }
    </script>
</html>