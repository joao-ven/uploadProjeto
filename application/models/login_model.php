<?php

class login_model extends CI_Model{

    public function admin_login($email, $password) {
        $query = $this->db->where(['admin_email' => $email, 'admin_password' => $password])
                ->get('admin');
        return $query;
    }

}
