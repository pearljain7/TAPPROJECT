<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>vation</title>
    	<link type="text/css" rel="stylesheet" href="media/layout.css" />    
        <script src="js/daypilot/daypilot-all.min.js" type="text/javascript"></script>
        <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    </head>
    <body>
        <?php
            // check the input
            //is_numeric($_GET['id']) or die("invalid URL");
            
            require_once '_db.php';
            
            $courts = $db->query('SELECT * FROM resources');
            
            $start = $_GET['start'];
            $end = $_GET['end']; 
            $resource = $_GET['resource']; 
            
            // basic sanity check
            new DateTime($start) or die("invalid date (start)");
            new DateTime($end) or die("invalid date (end)");
            is_numeric($resource) or die("invalid resource id"); 
        ?>
        <form id="f" style="padding:20px;">
            <h1>New Reservation</h1>
            <div>Name: </div>
            <div><input type="text" id="name" name="name" value="" /></div>
            <div class="space">
                <div>Start:</div>
                <div>
                    <?php print (new DateTime($start))->format('d/M/y g:i A') ?>
                    <input type="hidden" id="start" name="start" value="<?php echo $start ?>" />
                </div>
            </div>
            <div class="space">
                <div>End:</div>
                <div>
                    <?php print (new DateTime($end))->format('d/M/y g:i A') ?>
                    <input type="hidden" id="end" name="end" value="<?php echo $end ?>" />
                </div>
            </div>
            <div>Interview Type:</div>
            <div>
                <input type="hidden" id="resource" name="resource" value="<?php echo $resource ?>" />
                <select id="resource_list" name="resource_list" disabled>
                    <?php 
                        foreach ($courts as $court) {
                            $selected = $_GET['resource'] == $court['id'] ? ' selected="selected"' : '';
                            $id = $court['id'];
                            $name = $court['name'];
                            print "<option value='$id' $selected>$name</option>";
                        }
                    ?>
                </select>
                
            </div>
            <div class="space"><input type="submit" value="Save" /> <a href="javascript:close();">Cancel</a></div>
        </form>
        
        <script type="text/javascript">
        function close(result) {
            DayPilot.Modal.close(result);
        }

        $("#f").submit(function(ev) {
            ev.preventDefault();
            var f = $("#f");
            var url = "backend_create.php";
            $.post(url, f.serialize(), function (result) {
                close(eval(result));
            });            
        });

        $(document).ready(function () {
            $("#name").focus();
        });
    
        </script>
    </body>
</html>
