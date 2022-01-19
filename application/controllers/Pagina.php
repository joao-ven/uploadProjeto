<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Pagina extends CI_Controller {

    public function index() {
        $data['titulo'] = 'PROGRAMANDO EM PHP';
        $postagens = $this->db->get('post')->result();

        $data['postagens'] = $postagens;
        $this->load->view('home', $data);
    }

    public function post($id = FALSE) {
        $data['post'] = 'Post 01';
        if ($id != FALSE) {

            $post = $this->db->get_where('post', array('id' => $id))->row();

            $data['postagem'] = $post;
        }
        $this->load->view('template/post', $data);
    }

    public function sobre() {
        $data['titulo'] = 'informações sobre o blog';
        $this->load->view('infor', $data);
    }

    public function posts() {
        $data['titulo'] = 'POSTS';
        $this->load->view('template/listagem-posts', $data);
    }

}
