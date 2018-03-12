<h3>Đăng ký hệ thống</h3>
<?php if (isset($error)): ?>
<div class="alert alert-error">
    <?php echo $error; ?>
</div>
<?php endif; ?>

<form action="" method="post">
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>Email</label>
      <input type="text" class="form-control" placeholder="Email" name="email" required data-validation-required-message="Please enter your email." value="<?php echo (isset($postData) ? $postData['email'] : ''); ?>">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>Password</label>
      <input type="password" class="form-control" placeholder="Password from 6 characters" name="password" required data-validation-required-message="Please enter your email address.">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>Re-Password</label>
      <input type="password" class="form-control" placeholder="Re-Password" name="re-password" required data-validation-required-message="Please enter your email address.">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <div class="control-group">
    <div class="form-group col-xs-12 floating-label-form-group controls">
      <label>Fullname</label>
      <input type="tel" class="form-control" placeholder="Fullname" name="fullname" required data-validation-required-message="Please enter your fullname." value="<?php echo (isset($postData) ? $postData['fullname'] : ''); ?>">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>Role</label>
      <input type="checkbox" name="role" value="">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>Status</label>
      <input type="checkbox" name="status" value="">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <div class="control-group">
    <div class="form-group col-xs-12 floating-label-form-group controls">
      <label>Adress</label>
      <input type="tel" class="form-control" placeholder="adress" name="adress" required data-validation-required-message="Please enter your address." value="<?php echo (isset($postData) ? $postData['adress'] : ''); ?>">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <div id="success"></div>
  <div class="form-group">
    <button type="submit" class="btn btn-primary" id="sendMessageButton" style="margin-top:10px">Register</button>
  </div>
</form>