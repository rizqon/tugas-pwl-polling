<?php
class Model extends CI_Model{
	function get_question(){
		$this->db->select('*');
		$this->db->from('trx_pooling');
		$query = $this->db->get();

		return $query->result();
	}

	function get_result(){
		$this->db->select('seq_no, pool_no, pool_answer, pool_result');
		$this->db->from('trx_pool_ans');
		$query = $this->db->get();

		return $query->result();
	}

	function count_ans(){
		$this->db->select('sum(pool_result) as aggregate');
		$this->db->from('trx_pool_ans');
		$query = $this->db->get();

		return $query->result();
	}

	function update_result($pool){
		$this->db->where('seq_no', $pool);
		$this->db->set('pool_result', 'pool_result+1', FALSE);
		return $this->db->update('trx_pool_ans');
	}

}