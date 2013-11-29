
<form action="<?php echo site_url('home/proccess'); ?>" method="post"> 
    <ul>
        <?php foreach($pitakonan as $value): ?> 
            <li> 
                <label><input type="radio" name="answer" value="<?php echo $value->seq_no; ?>" /> <?php echo $value->pool_answer; ?></label> 
            </li> 
        <?php endforeach; ?> 
    </ul> 
    <br /> 
    <input type="submit" value="Post Answer" /> 
</form>            </div> 