import Image from 'next/image';
import '../../../styles/login.css';

const LogInPetOwner = () => {
  return (
    <>
      <nav className='navbar--pet-owners'>
        <div className='nav-image-wrapper'>
          <Image
            src='/images/logo-hayvanli-beyaz-bg-transparan.png'
            alt='Logo'
            width={100}
            height={100}
          />
        </div>
      </nav>
      <main className='login-page login--pet-owners'>
        <section className='login-container'>
          <div className='login-container__header'>
            <div className='header-image-wrapper'>
              <Image
                src='/images/logo-hayvanli-turuncu-bg-transparan.png'
                alt='Pet Owners'
                width={100}
                height={100}
              />
            </div>
          </div>

          <form className='login-container__form'>
            <label className='login-container__form-label' htmlFor='email'>
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

            <label className='login-container__form-label' htmlFor='password'>
              Şifreniz
            </label>
            <input
              className='login-container__form-input'
              type='password'
              id='password'
              name='password'
              placeholder='Şifrenizi girin'
              required
            />

            <div className='login-container__form-buttons'>
              <button className='login-container__form-button' type='submit'>
                Giriş Yap
              </button>
              <a
                className='login-container__form-button purple login-container__form-button--secondary'
                href='/kayit-ol/evcil-hayvan-sahibi'
              >
                Hesabınız yok mu?
              </a>
            </div>
          </form>
        </section>
        <section className='login-side-image-wrapper'>
          <img src='/images/evcil-hayvan-login-resim.jpg' alt='Pet Owners' />
        </section>
      </main>
    </>
  );
};

export default LogInPetOwner;
