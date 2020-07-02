<?php

  $nav_selected = "MOVIES"; 
  $left_buttons = "YES"; 
  $left_selected = ""; 

  include("./nav.php");
  global $db;
?>

<div class="right-content">
    <div class="container">

      <h3 style = "color: #01B0F1;">Movies Report</h3>

<!--         <h3><img src="images/releases.png" style="max-height: 35px;" />System Releases</h3> -->

        <table id="info" cellpadding="0" cellspacing="0" border="0"
            class="datatable table table-striped table-bordered datatable-style table-hover"
            width="100%" style="width: 100px;">
              <thead>
                <tr id="table-first-row">
                        <th>Number of Movies</th>
                        <th>Year</th>
                </tr>
              </thead>

              <tfoot>
                <tr>
                        <th>Number of Movies</th>
                        <th>Year</th>
                </tr>
              </tfoot>

              <tbody>

              <?php

$sql = "SELECT COUNT(year_made) AS number_of_movies, year_made AS Year 
        FROM movies 
        GROUP BY year_made
        ORDER BY year_made DESC;";
$result = $db->query($sql);

                if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo '<tr>
                                <td>'.$row["number_of_movies"].'</td>
                                <td>'.$row["Year"].' </span> </td>
                            </tr>';
                    }//end while
                }//end if
                else {
                    echo "0 results";
                }//end else

                 $result->close();
                ?>

              </tbody>
        </table>


        <script type="text/javascript" language="javascript">
    $(document).ready( function () {
        
        $('#info').DataTable( {
            dom: 'lfrtBip',
            buttons: [
                'copy', 'excel', 'csv', 'pdf'
            ] }
        );

        $('#info thead tr').clone(true).appendTo( '#info thead' );
        $('#info thead tr:eq(1) th').each( function (i) {
            var title = $(this).text();
            $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    
            $( 'input', this ).on( 'keyup change', function () {
                if ( table.column(i).search() !== this.value ) {
                    table
                        .column(i)
                        .search( this.value )
                        .draw();
                }
            } );
        } );
    
        var table = $('#info').DataTable( {
            orderCellsTop: true,
            fixedHeader: true,
            retrieve: true
        } );
        
    } );

</script>

        

 <style>
   tfoot {
     display: table-header-group;
   }
 </style>

  <?php include("./footer.php"); ?>