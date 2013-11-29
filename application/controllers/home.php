<?php
class Home extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->model('model');
	}
	function index(){
		$data['quest'] = $this->model->get_question();
		$data['pitakonan'] = $this->model->get_result();
 		$data['content'] = 'polling.php';
		$this->load->view('welcome_view', $data);
	}
	function results(){
		$data['generate'] = $this->model->count_ans();
		$data['quest'] = $this->model->get_question();
		$data['result'] = $this->model->get_result();
		$data['content'] = 'result_view';
		$this->load->view('welcome_view', $data);
	}

	function proccess(){
		$data = $this->input->post('answer', TRUE);
		$this->model->update_result($data);
		redirect('home/results');
	}

	function coba(){
		$data = $this->model->get_result();
		print_r($data);
	}
}