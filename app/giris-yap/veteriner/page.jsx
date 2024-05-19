import Image from 'next/image';
import '../../../styles/login.css';

const LogInVeterinarian = () => {
  return (
    <>
      <nav className='navbar bg--veterinarians'>
        <div className='nav-image-wrapper'>
          <Image
            src='/images/logo-hayvanli-beyaz-bg-transparan.png'
            alt='Logo'
            width={100}
            height={100}
          />
        </div>
      </nav>
      <main className='login-page login--veterinarians'>
        <section className='login-container'>
          <div className='login-container__header'>
            <div className='header-image-wrapper'>
              <Image
                src='/images/logo-hayvanli-mavi-bg-transparan.png'
                alt='Veterinarians'
                width={100}
                height={100}
              />
            </div>
          </div>

          <form className='login-container__form'>
            <label
              className='login-container__form-label label--veterinarians'
              htmlFor='email'
            >
              E-Mail Adresiniz
            </label>
            <input
              className='login-container__form-input'
              type='email'
              id='email'
              name='email'
              placeholder='E-posta adresinizi girin'
              required
            />

            <div className='password-container'>
              <label
                className='login-container__form-label label--veterinarians'
                htmlFor='password'
              >
                Şifreniz
              </label>
              <button className='login-container__form-label label--veterinarians'>
                Şifremi Unuttum
              </button>
            </div>
            <input
              className='login-container__form-input'
              type='password'
              id='password'
              name='password'
              placeholder='Şifrenizi girin'
              required
            />

            <div className='login-container__form-buttons'>
              <button
                className='login-container__form-button bg--veterinarians'
                type='submit'
              >
                Giriş Yap
              </button>
              <a
                className='login-container__form-button sign-up-link--veterinarians login-container__form-button--secondary'
                href='/kayit-ol/evcil-hayvan-sahibi'
              >
                Hesabınız yok mu?
              </a>
            </div>
          </form>
        </section>
        <section className='login-side-image-wrapper'>
          <img src='/images/veteriner-login-resim.jpg' alt='Pet Owners' />
        </section>
      </main>
    </>
  );
};

export default LogInVeterinarian;
