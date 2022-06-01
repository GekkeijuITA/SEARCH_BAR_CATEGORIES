<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style>
            input[type="radio"]
            {
                display: none;
            }
            .checked
            {
                border-bottom: 2px solid black;
            }
        </style>
    </head>
    <body>
        <form onchange="changeCss();searchq()">
            <label>
                <input type="radio" name="category" value="category1">Category 1
            </label>
            <label>
                <input type="radio" name="category" value="category2">Category 2
            </label>
            <label>
                <input type="radio" name="category" value="category3">Category 3
            </label>
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

        function changeCss()
        {
            $("input[type=radio]").parent("label").removeClass("checked");
            $("input[type=radio]:checked").parent("label").addClass("checked");
        }
        
    </script>
</html>