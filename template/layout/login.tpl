<!DOCTYPE HTML>
<html>
  <head>
    <title>Platinmarket - Giriş</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="<?php echo $this['asset']->resolve('_root/login.css'); ?>" />
  </head>
  <body>
    <?php $view['slots']->output('_content') ?>
    <script type="application/javascript" src="<?php echo $this['asset']->resolve('_root/polyfills.js'); ?>"></script>
    <script type="application/javascript" src="<?php echo $this['asset']->resolve('_root/vendor.js'); ?>"></script>
    <script type="application/javascript" src="<?php echo $this['asset']->resolve('_root/login.js'); ?>"></script>
  </body>
</html>
