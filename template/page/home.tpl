<?php
    $q = array(
      'success_url' => '/api',
      'fail_url' => '/api?login=fail'
    );
    $loginUrl = sprintf('/api/auth/start?_q=%s', urlencode(base64_encode(json_encode($q))));
    $logoutUrl = sprintf('/api/auth/logout?_q=%s', urlencode(base64_encode(json_encode($q))));
?>
<!DOCTYPE HTML>
<html lang="tr">
<head>
  <title>Platinmarket GraphQL - Api</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <link rel="stylesheet" href="<?php echo $this['asset']->resolve('_root/home.css'); ?>" />
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark">
    <div class="container">
      <a class="navbar-brand" href="/api">PlatinMarket <span style="vertical-align: 2px;" class="badge badge-primary">Developer</span></a>
    </div>
  </nav>
  <div class="container">
    <div class="card">
      <div class="card-title">
        <div class="row no-gutters">
          <div class="col align-self-start">
              PlatinMarket GraphQL Api Explorer <span style="vertical-align: 2px;" class="badge badge-secondary"><?php echo $version ?></span>
          </div>
          <div class="col-xs-1 align-self-end">
            <p style="font-size: .8rem;" class="text-secondary">
            <?php if ($user) { ?>
              Giriş yapan kullanıcı: <?php echo $user['firstname'] . ' ' . $user['lastname']; ?>
              <a href="<?php echo $logoutUrl; ?>" class="btn btn-danger btn-sm">Çıkış</a>
            <?php } else { ?>
              GraphQl explorer kullanabilmeniz için
              <a href="<?php echo $loginUrl; ?>" class="btn btn-success btn-sm">Giriş Yapınız</a>
            <?php } ?>
            </p>
          </div>
        </div>
      </div>
      <div id="graphiql">Loading...</div>
    </div>
  </div>
  <script src="//cdn.jsdelivr.net/es6-promise/4.0.5/es6-promise.auto.min.js"></script>
  <script src="//cdn.jsdelivr.net/fetch/0.9.0/fetch.min.js"></script>
  <script src="//cdn.jsdelivr.net/react/15.4.2/react.min.js"></script>
  <script src="//cdn.jsdelivr.net/react/15.4.2/react-dom.min.js"></script>
  <script type="application/javascript" src="<?php echo $this['asset']->resolve('_root/polyfills.js'); ?>"></script>
  <script type="application/javascript" src="<?php echo $this['asset']->resolve('_root/vendor.js'); ?>"></script>
  <script type="application/javascript" src="<?php echo $this['asset']->resolve('_root/home.js'); ?>"></script>
</body>
</html>
