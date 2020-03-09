<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Analytics_model extends CI_Model{
	
	public $auto_prune = TRUE;
	public $ignore_ip = array(
		//local ip's
		'192.168.0.8',
		
		//spam ip's
		'66.232.97.145',
		'95.168.183.203'
	);

    public $table  = 'visitor_activity';
	
	public function __contstruct(){
		parent::__contstruct();
	}
	
	public function saveUserInfo(){
		//delete data older than 6 mos
		if($this->auto_prune)
			$this->db->query('DELETE FROM `' . $this->db->dbprefix($this->table) . '` WHERE timestamp < DATE_SUB(NOW() , INTERVAL 6 MONTH)');
		
		$data['ip'] = $this->getRealIpAddr();
		
		//dont save ignored ip's
		if(in_array($data['ip'], $this->ignore_ip))
			return;
		
		$this->load->library('user_agent');
		
		if( stristr($_SERVER['HTTP_USER_AGENT'], 'bot') === FALSE && 
			stristr($_SERVER['HTTP_USER_AGENT'], 'http') === FALSE &&
			stristr($_SERVER['HTTP_USER_AGENT'], 'Yandex') === FALSE ) {
	    	//'bot' and 'http' not found. agent is a browser
	  		$data['agent_type'] = 'Browser';
			$data['agent_name'] = $this->agent->browser();
			$data['agent_version'] = $this->agent->version();
			
			if($data['agent_name'] == NULL)
				$data['agent_string'] = $this->agent->agent_string();
			
		} else {
			//agent is a bot
			$data['agent_type'] = 'Robot';
			$data['agent_name'] = $this->getBotName();
			
			if($data['agent_name'] == 'Unknown')
				$data['agent_string'] = $this->agent->agent_string();
		}
		
		$data['referrer'] = $this->agent->referrer();
		$data['uri'] = $this->uri->uri_string();
		//remove agent string after testing
		//$data['agent_string'] = $this->agent->agent_string();
		
		$this->db->insert($this->db->dbprefix($this->table), $data);
	}
	
	public function getBotName(){
		if(stristr($_SERVER['HTTP_USER_AGENT'], 'google') !== FALSE )
			return "Google";
		if(stristr($_SERVER['HTTP_USER_AGENT'], 'yahoo') !== FALSE )
			return "Yahoo!";
		if(stristr($_SERVER['HTTP_USER_AGENT'], 'Baiduspider') !== FALSE )
			return "Baiduspider";
		if(stristr($_SERVER['HTTP_USER_AGENT'], 'msnbot') !== FALSE )
			return "msnbot";
		if(stristr($_SERVER['HTTP_USER_AGENT'], 'WebDataCentreBot') !== FALSE )
			return "WebDataCentreBot";
		if(stristr($_SERVER['HTTP_USER_AGENT'], 'Exabot') !== FALSE )
			return "Exabot";
		
		return "Unknown";
	}
	
	public function getRealIpAddr(){
	    //check ip from share internet
		if(!empty($_SERVER['HTTP_CLIENT_IP']))
	    	return $_SERVER['HTTP_CLIENT_IP'];
	    //to check ip is pass from proxy
	    elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR']))
	    	return $_SERVER['HTTP_X_FORWARDED_FOR'];
	    //normal ip address
	    else
	      return $_SERVER['REMOTE_ADDR'];
	}
	
	public function getVisitors(){
		
		$query = $this->db->query('SELECT DATE_FORMAT( timestamp , "%Y-%m-%d") as theday, count(DISTINCT (ip)) as num
			FROM `' . $this->db->dbprefix($this->table) . '`
			WHERE timestamp > DATE_SUB( CURDATE( ) , INTERVAL 32 DAY )
			AND agent_type = "Browser" 
			GROUP BY DATE( timestamp )');
		
		return $query;
		
	}
	
	public function getUniqueVisitorsCount(){
		
		$query = $this->db->query('SELECT count( DISTINCT (
			ip
			) ) cnt
			FROM `' . $this->db->dbprefix($this->table) . '`
			WHERE agent_type = "Browser"
			AND timestamp > DATE_SUB( CURDATE( ) , INTERVAL 32
			DAY )')->first_row()->cnt;
		
		return $query;
		
	}
	
	public function getVisitorsCount(){

			$total = $this->getVisitors()->num_rows();

		return $total;
	}
	
	public function getPagesCount(){
		
		$query = $this->db->query('SELECT count(*) cnt FROM `' . $this->db->dbprefix($this->table) . '`
			WHERE agent_type = "Browser"
			AND timestamp > DATE_SUB( CURDATE( ) , INTERVAL 32
			DAY )')->first_row()->cnt;
			
		return $query;
	}
	
	public function getContentOverview(){
		
		$query = $this->db->query('SELECT uri, count( uri ) cnt
			FROM `' . $this->db->dbprefix($this->table) . '`
			WHERE agent_type = "Browser"
			AND timestamp > DATE_SUB( CURDATE( ) , INTERVAL 32 DAY )
			GROUP BY uri
			ORDER BY cnt DESC');
			
		return $query;
		
	}
	
	public function getContentCount(){
		
		$query = $this->db->query('SELECT count( * ) cnt
			FROM `' . $this->db->dbprefix($this->table) . '`
			WHERE agent_type = "Browser"
			AND timestamp > DATE_SUB( CURDATE( ) , INTERVAL 32
			DAY )')->first_row()->cnt;
			
		return $query;
		
	}
	
	public function getReferrers(){
		
		$site_name = substr(base_url(),7);

		$query = $this->db->query('SELECT referrer, count( referrer ) cnt
			FROM `' . $this->db->dbprefix($this->table) . '` 
			WHERE referrer != "" 
			AND referrer NOT LIKE ' . '"' . $site_name  . '%"
			AND agent_type = "Browser" 
			AND timestamp > DATE_SUB( CURDATE( ) , INTERVAL 32 DAY ) 
			GROUP BY referrer 
			ORDER BY cnt DESC');
		
		return $query;
		
	}
	
	public function getReferrerOverview(){
		
		$query = $this->db->query('SELECT v.ip, v.referrer
			FROM `' . $this->db->dbprefix($this->table) . '` v
			WHERE v.timestamp = (
			SELECT min( timestamp )
			FROM `' . $this->db->dbprefix($this->table) . '`
			WHERE ip = v.ip )
			AND v.agent_type = "Browser"
			AND timestamp > DATE_SUB( CURDATE( ) , INTERVAL 32 DAY )
			GROUP BY v.ip');
		
		return $query;
		
	}
}
/* End of file analytics_model.php */
/* Location: ./application/models/analytics_model.php */
