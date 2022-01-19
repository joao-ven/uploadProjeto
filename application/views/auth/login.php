
<link href="<?php echo base_url() ?>assets/css/login.css" rel="stylesheet">
<title>Login</title>
<div class="row conteiner-login ">

    <?php $this->load->view('template/Admin/header.php'); ?>
    <div class="row conteiner-login">
<div id="infoMessage"><?php echo $message; ?></div>
        </h2>
        <div class="container">
            <div class="row">
                <div class="col-md-3 row-login centered">
                    <div class="checkbox mb-3">

                    </div>
                    <h2>Acesso Cadastro</h2>
                    <form action="<?php echo base_url() ?>auth/login" method="post">
                        <div class="form-group">
                            <label><?php echo lang('login_identity_label', 'identity'); ?></label>

                            <input type="email" name="identity" class="form-control" >
                            
                        </div>
                        <div class="form-group">

                        </div>

                        <div class="form-group">
                            <label><?php echo lang('login_password_label', 'password'); ?></label>
                            <input type="password" name="password" class="form-control" >
                            
                        </div>
                        <div class="checkbox mb-3">
                            <label>
                                <?php echo form_checkbox('remember', '1', FALSE, 'id="remember"'); ?>Remenber
                            </label>
                        </div>
                        <div class="form-group">

                            <?php echo form_submit('submit', lang('login_submit_btn')); ?> 

                        </div>  
                    </form>
                    <p><a href="forgot_password"><?php echo lang('login_forgot_password'); ?></a>

                    </p>
                </div>
            </div>
        </div>
    </div>