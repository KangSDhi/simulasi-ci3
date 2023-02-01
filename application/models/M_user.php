<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_user extends CI_Model {
	/*
	| ----------------SERVER SIDE DATA MEMBERS--------------
	*/

	private $column_order = array(null, 'id', 'nama', 'email', 'date_created');

	private $column_search = array('id', 'nama', 'email', 'date_created');

	private $order = array('id' => 'asc');

	private function _tbl_user()
	{
		$this->db->select('*');
		$this->db->from('tb_user');
		$this->db->where('role_id', 2);
		$this->db->where('is_active', 1);
	}

	private function _get_query()
	{
		$this->_tbl_user();

		$i = 0;

		foreach ($this->column_search as $item) {
			if ($_POST['search']['value']) {
				if ($i === 0) {
					$this->db->group_start();
					$this->db->like($item, $_POST['search']['value']);
				} else {
					$this->db->or_like($item, $_POST['search']['value']);
				}

				if (count($this->column_search) - 1 == $i)
				$this->db->group_end();
			}
			$i++;
		}

		if (isset($_POST['order'])) {
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if (isset($this->order)) {
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	public function getMembers()
	{
		$this->_get_query();

		if ($_POST['length'] != -1)
			$this->db->limit($_POST['length'], $_POST['start']);
			$query = $this->db->get();

			return $query->result();
	}

	public function count_filtered()
	{
		$this->_get_query();
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all()
	{
		$this->_tbl_user();
		return $this->db->count_all_results();
	}

	public function addUser($data)
	{
		$this->db->insert('tbl_user', $data);
	}

	public function cekUserByEmail($email)
	{
		return $this->db->get_where('tbl_user', array('email' => $email));
	}

	public function cekUserById($idUser)
	{
		return $this->db->get_where('tbl_user', array('id' => $idUser));
	}

	public function updateUserById($data, $idUser)
	{
		$this->db->where('id', $idUser);
		$this->db->update('tbl_user', $data);
	}
}
