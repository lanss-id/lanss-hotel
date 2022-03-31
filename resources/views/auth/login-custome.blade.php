<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Log in | {{config('app.name')}}</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/adminlte/plugins/fontawesome-free/css/all.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="/adminlte/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/adminlte/dist/css/adminlte.min.css">
    <link rel="stylesheet" href="/scss/style.css">
</head>
<body>
    <section class=" gradient-custom">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
              <div class="card bg-dark text-white" style="border-radius: 1rem;">
                <div class="card-body p-5 text-center">
      
                  <div class="mb-md-5 mt-md-4 pb-5">
      
                    <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                    <p class="text-white-50 mb-5">Masukan Username Dan Password!</p>
      
                    <form action="?" method="post">
                        <div class="form-outline form-white mb-4">
                          <label class="form-label" for="typeEmailX">Username</label>
                            <input type="text" name="username" class="form-control{{ $errors->has('username') ? ' is-invalid':'' }}" placeholder="Username" />  
                            @error('username')
                          <div class="invalid-feedback">{{ $message }}</div>
                          @enderror
                          </div>
            
                          <div class="form-outline form-white mb-4">
                            <label class="form-label" for="typePasswordX">Password</label>
                            <input type="password" name="password" class="form-control{{ $errors->has('username') ? ' is-invalid':'' }}" placeholder="Password" />
                          </div>
            
                          <button class="btn btn-outline-light btn-lg px-5" type="submit">
                              Login
                          </button>
                    </form>
      
                  </div>
         
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

<script src="/adminlte/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/adminlte/dist/js/adminlte.min.js"></script>
</body>
</html>