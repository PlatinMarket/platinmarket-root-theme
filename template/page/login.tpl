<?php $this->extend('login') ?>
<div class="container-fluid">
  <div class="back bg-primary <?php if ($this['form']->isPost() || $this['form']->errorFields()) { ?> bg-danger <?php } ?>"></div>
  <div class="row justify-content-center">
    <div class="card-container col-sm-12 col-md-9 col-lg-6 align-self-center">
      <h1 class="header text-center">
        <?php echo __($this['form']->isPost() || $this['form']->errorFields() ? 'User login failed!' : 'Please login') ?>
      </h1>
      <div class="card">
        <div class="card-block">
          <form method="post" autocomplete="off" class="<?php if ($this['form']->isPost()) echo 'post_back'; ?>">
            <?php echo $this['form']->generateToken(); ?>
            <div class="form-group <?php if ($this['form']->error('email')) { ?>has-danger<?php } ?>">
              <label for="email" class="control-label"><?php echo __('Email'); ?></label>
              <input type="email" id="email" name="email" class="form-control <?php if ($this['form']->error('email')) { ?>form-control-danger<?php } ?>" value="<?php echo $this['form']->data('email'); ?>" autocomplete="off" autofocus required />
              <?php if ($this['form']->error('email')) { ?>
                <div class="form-control-feedback"><?php echo implode(',', $this['form']->error('email')) ?></div>
              <?php } ?>
            </div>
            <div class="form-group <?php if ($this['form']->error('password')) { ?>has-danger<?php } ?>">
              <label for="password" class="control-label"><?php echo __('Password'); ?></label>
              <input type="password" id="password" name="password" class="form-control <?php if ($this['form']->error('password')) { ?>form-control-danger<?php } ?>" value="<?php echo $this['form']->data('password'); ?>" autocomplete="off" required />
              <?php if ($this['form']->error('password')) { ?>
                <div class="form-control-feedback"><?php echo implode(',', $this['form']->error('password')) ?></div>
              <?php } ?>
            </div>
            <div class="row">
              <div class="col-6 align-self-center">
                <a href=""><?php echo __('Lost password'); ?></a>
              </div>
              <div class="col-6 text-right">
                <?php if ($fail_url) { ?>
                  <a href="<?php echo $fail_url ?>" class=""><?php echo __('Cancel'); ?></a>
                <?php } ?>
                <button type="submit" class="btn btn-primary"><?php echo __('Login'); ?></button>
              </div>
            </div>
          </form>
        </div>
      </div>
      <div class="copyright text-center">
        <div class="logo-container">
          <a class="logo" href="">
            <i class="pm pm-icon"></i>
          </a>
        </div>
        <div class="btn-group">
          <a href="" class="btn btn-link">Yardım</a>
          <a href="" class="btn btn-link">Kullanım koşulları</a>
        </div>
      </div>
    </div>
  </div>
</div>
