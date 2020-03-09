<?php $this->load->view("partial/header"); ?>

<script type="text/javascript">
	dialog_support.init("a.modal-dlg");
</script>
<div id="config_wrapper">
	<div class='content'>
	<div class='head'>
		<img src='<?php echo base_url();?>public/images/chart_bar.png' style='vertical-align: middle'> <?php echo $this->lang->line('analytics_for');?> 
	 <?php echo date('M j, Y', time() - 2592000)?> - <?php echo date('M j, Y') ?>
	</div>
	<br/>
	<div id='section'><?php echo $this->lang->line('daily_visitors');?></div>
	<div id='section-detail'>
		<?php output_chart('visitors', 880, 250)?>
	</div>
	<div id='section'><?php echo $this->lang->line('site_usage');?></div>
	<div id='section-detail'>
		<?php echo "<table style='margin-left: 25px; width: 80%'>
		<tr>
			<td ><span style='font-size: 16px;'><b>$visits</b></b></span> ".$this->lang->line('visitors')." <br/><br/>
				<span style='font-size: 16px;'><b>$unique_visits</b></span> ".$this->lang->line('unique_visits')."</td>
			<td><span style='font-size: 16px;'><b>$pages</b></span> ".$this->lang->line('page_views')."<br/><br/>
				<span style='font-size: 16px;'><b>".(($pages && $visits) ? round(($pages/$visits), 2):0)."</b></span> ".$this->lang->line('pages_visits')."</td>
		</tr>
	</table>"; ?>
	</div>	
	<br/><br/>
	<div id='section'><?php echo $this->lang->line('content_overview');?></div>
	<div id='section-detail'>
	<table cellspacing=0 cellpadding=4 style='margin-left: 25px; width: 80%'>
	<tr><td><b>Pages</b></td>
	<td>&nbsp;&nbsp;&nbsp;<b><?php echo $this->lang->line('page_views');?></b></td>
	<td>&nbsp;&nbsp;&nbsp;<b><?php echo $this->lang->line('percent');?></b></td></tr>
	<?php $count = 0; 
	foreach($content_overview->result_array() as $row){
		$percent = (($row['cnt']) ? round(($row['cnt']/$content_count)*100, 2) : 0);
		echo "<tr style='background-color: ".alternator('#fff', '#f0f0f0').";'><td>".((!$row['uri']) ? '/' : $row['uri'])."</td>
			<td>&nbsp;&nbsp;&nbsp;$row[cnt]</td>
			<td>&nbsp;&nbsp;&nbsp;$percent%</td>
			<td><div style='background-color: #888; margin-left: 20px; width: ".round($percent*3)."px'>&nbsp;</div></td></tr>";
		if($count++ > 10)
			break;
	}?>
	</table>
	</div>
	<br/><br/>

	<div id='section'><?php echo $this->lang->line('traffic_s_overview');?></div>
		<div id='section-detail'>
			<div style='float: left'>
				<?php //output_chart('referrers', 400, 220)?>
			</div>
			<div style='float: left; margin-left: 25px;'>
				<table cellspacing=0 cellpadding=4>
				<tr><td><b><?php echo $this->lang->line('referrer');?></b></td><td>&nbsp;&nbsp;&nbsp;<b><?php echo $this->lang->line('visitors');?></b></td></tr>
				<?php $count = 0; 
				foreach($referrers->result_array() as $row){
					echo "<tr style='background-color: ".alternator('#fff', '#f0f0f0').";'>
						<td>".((strlen($row['referrer']) > 120) ? substr($row['referrer'],0,120).'...' : $row['referrer'])."</td>
						<td>&nbsp;&nbsp;&nbsp;$row[cnt]</td></tr>";
					if($count++ > 10)
						break;
				}?>
				</table>
			</div>
		<div style='clear: both'></div>
		</div>
	</div>

</div>
<?php $this->load->view("partial/footer"); ?>
