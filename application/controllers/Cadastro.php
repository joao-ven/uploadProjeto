<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cadastro extends CI_Controller {

    public function __construct() {
        parent::__construct();

        $this->load->database();
        $this->load->helper('url');

        $this->load->library('grocery_CRUD');
    }

    public function _example_output($output = null) {
        $this->load->view('example.php', (array) $output);
    }

    public function index() {
        $this->_example_output((object) array('output' => '', 'js_files' => array(), 'css_files' => array()));
    }

    public function post() {



        $crud = new grocery_CRUD();

        $crud->set_theme('datatables');
        // $crud->set_table('employees');
        $crud->set_relation('id_autor', 'autor', 'nome');
        $crud->display_as('id_autor', 'Autor');
        $crud->set_subject('Post');

        // $crud->required_fields('lastName');

        $crud->set_field_upload('url_imagem', 'assets/uploads/files');

        $output = $crud->render();

        $this->_example_output($output);
    }

}
