<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

require_once("Secure_Controller.php");

class Analytics extends Secure_Controller {
	
	function __construct(){
		parent::__construct('analytics');
		$this->load->helper( 'string' );				
	}
	
	function index($message=null){
		//$this->output->enable_profiler();
		$this->load->helper('chart');

		$data = array (
			'visits' => $this->Analytics_model->getVisitorsCount(),
			'unique_visits' => $this->Analytics_model->getUniqueVisitorsCount(),
			'pages' => $this->Analytics_model->getPagesCount(),
			'content_overview' => $this->Analytics_model->getContentOverview(),
			'content_count' => $this->Analytics_model->getContentCount(),
			'referrers' => $this->Analytics_model->getReferrers(),
			'visitors' => $this->Analytics_model->getVisitors(),
			'referrer_overview' => $this->Analytics_model->getReferrerOverview()
		);
		
		$this->load->view("analytics/analytics_visit", $data);
	}
	
}
