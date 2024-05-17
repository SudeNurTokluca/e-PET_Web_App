import Image from 'next/image';
import '../../../styles/login.css';

const LogInPetOwner = () => {
  return (
    <main className='login login--pet-owners'>
      <nav className='navbar--pet-owners'>
        <Image
          src='/images/logo-hayvanli-beyaz-bg-transparan.png'
          alt='Logo'
          width={75}
          height={50}
        />
      </nav>

      <section className='login-container'>
        <div className='login-container__header'>
          <h1 className='login-container__header-title'>
            Evcil Hayvan Sahibi Girişi
          </h1>
          <p className='login-container__header-subtitle'>
            Hesabınıza giriş yapın
          </p>
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

          <button className='login-container__form-button' type='submit'>
            Giriş Yap
          </button>
        </form>

        <div className='login-container__footer'>
          <p className='login-container__footer-text'>Hesabınız yok mu?</p>
          <a
            className='login-container__form-button login-container__form-button--secondary'
            href='/kayit-ol/evcil-hayvan-sahibi'
          >
            Kayıt Ol
          </a>
        </div>
      </section>
    </main>
  );
};

export default LogInPetOwner;
