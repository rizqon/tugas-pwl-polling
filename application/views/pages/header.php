
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
    <head> 
        <title>Polling</title> 
        <!-- Styles --> 
        <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/styles.css'); ?>" media="screen" /> 
    </head> 
    <body class="common"> 
        <div class="page"> 
            <h1>Pooling System</h1> 
            <div class="navigation"> 
                <ul> 
                    <li><a href="<?php echo site_url('home'); ?>">Latest Pooling</a></li> 
                    <li><a href="<?php echo site_url('home/results'); ?>">Result</a></li> 
                </ul> 
            </div> 
            <div class="clear"></div> 
            <div class="content"> 
                <h3><?php echo $quest[0]->pool_quest; ?></h3>