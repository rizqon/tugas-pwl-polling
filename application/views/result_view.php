<table width="100%"> 
<?php $x=1; foreach($result as $value): ?>
            <tr> 
            <td width="5%"><?php echo $x; ?></td> 
            <td width="30%"><?php echo $value->pool_answer; ?></td> 
            <td width="65%"> 
                <div class="bar-chart" style="width: <?php echo ($value->pool_result/$generate[0]->aggregate) *100; ?>%;"></div> 
                <b> 
                <?php echo sprintf("%.2f", ($value->pool_result/$generate[0]->aggregate) *100); ?>                %
            </b> 
        </td>
<?php $x++; endforeach; ?> 
    </table>            </div>