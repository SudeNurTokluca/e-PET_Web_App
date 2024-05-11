
import React from "react";

function VeterinerLayout({children}){
    return(
      <div className="app-page flex-column flex-column-fluid" id="kt_app_page">
      <div id="kt_app_header" className="app-header" data-kt-sticky="true" data-kt-sticky-activate="{default: true, lg: true}" data-kt-sticky-name="app-header-minimize" data-kt-sticky-offset="{default: '200px', lg: '0'}" data-kt-sticky-animation="false" style={{ boxShadow: "rgba(0, 0, 0, 0.35) 0px 5px 15px" }}>
        <div className="app-container container-fluid d-flex align-items-stretch justify-content-between" id="kt_app_header_container">
          <div className="d-flex align-items-center d-lg-none ms-n3 me-1 me-md-2" title="Show sidebar menu">
            <div className="btn btn-icon btn-active-color-primary w-35px h-35px" id="kt_app_sidebar_mobile_toggle">
              <i className="ki-duotone ki-abstract-14 fs-2 fs-md-1">
                <span className="path1"></span>
                <span className="path2"></span>
              </i>
            </div>
          </div>
          <div className="d-flex align-items-center flex-grow-1 flex-lg-grow-0">
            <a href="index.html" className="d-lg-none">
               <img  src="/images/logo-hayvanli-turuncu-bg-transparan.png" className="h-30px" /> 
            </a>
          </div>
          <div className="d-flex align-items-stretch justify-content-between flex-lg-grow-1" id="kt_app_header_wrapper">
            <div className="app-header-menu app-header-mobile-drawer align-items-stretch" data-kt-drawer="true" data-kt-drawer-name="app-header-menu" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="250px" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_app_header_menu_toggle" data-kt-swapper="true" data-kt-swapper-mode="{default: 'append', lg: 'prepend'}" data-kt-swapper-parent="{default: '#kt_app_body', lg: '#kt_app_header_wrapper'}">
              <div className="menu menu-rounded menu-column menu-lg-row my-5 my-lg-0 align-items-stretch fw-semibold px-2 px-lg-0" id="kt_app_header_menu" data-kt-menu="true">
                
              </div>
            </div>
            <div className="app-navbar flex-shrink-0">
              <div className="app-navbar-item ms-1 ms-md-4">
                <div className="btn btn-icon btn-custom btn-icon-muted btn-active-light btn-active-color-primary w-35px h-35px" data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end" id="kt_menu_item_wow">
                  <i className="ki-duotone ki-notification-bing fs-2">
                    <span className="path1"></span>
                    <span className="path2"></span>
                    <span className="path3"></span>
                    <span className="path4"></span>
                  </i>
                </div>
                <div className="menu menu-sub menu-sub-dropdown menu-column w-350px w-lg-375px" data-kt-menu="true" id="kt_menu_notifications">
                  <div className="d-flex flex-column bgi-no-repeat rounded-top" style={{ backgroundImage: "url('assets/media/misc/menu-header-bg.jpg')" }}>
                    <h3 className="text-white fw-semibold px-9 mt-10 mb-6">Bildirim Kutusu</h3>
                    <ul className="nav nav-line-tabs nav-line-tabs-2x nav-stretch fw-semibold px-9">
                      <li className="nav-item">
                        <a className="nav-link text-white opacity-75 opacity-state-100 pb-4 active" data-bs-toggle="tab" href="#kt_topbar_notifications_1">Bildirimler</a>
                      </li>
                    </ul>
                  </div>
                  <div className="tab-content">
                    <div className="tab-pane fade show active" id="kt_topbar_notifications_1" role="tabpanel">
                      <div className="scroll-y mh-325px my-5 px-8">
                        <div className="d-flex flex-stack py-4">
                          <div className="d-flex align-items-center">
                            <div className="symbol symbol-35px me-4">
                              <span className="symbol-label bg-light-primary">
                                <i className="ki-duotone ki-abstract-28 fs-2 text-primary">
                                  <span className="path1"></span>
                                  <span className="path2"></span>
                                </i>
                              </span>
                            </div>
                            <div className="mb-0 me-2">
                              <a href="#" className="fs-6 text-gray-800 text-hover-primary fw-bold">Project Alice</a>
                              <div className="text-gray-500 fs-7">Phase 1 development</div>
                            </div>
                          </div>
                          <span className="badge badge-light fs-8">1 hr</span>
                        </div>
                      
                        <div class="d-flex flex-stack py-4">
                          <div class="d-flex align-items-center">
                            <div class="symbol symbol-35px me-4">
                              <span class="symbol-label bg-light-warning">
                                <i class="ki-duotone ki-color-swatch fs-2 text-warning">
                                  <span class="path1"></span>
                                  <span class="path2"></span>
                                  <span class="path3"></span>
                                  <span class="path4"></span>
                                  <span class="path5"></span>
                                  <span class="path6"></span>
                                  <span class="path7"></span>
                                  <span class="path8"></span>
                                  <span class="path9"></span>
                                  <span class="path10"></span>
                                  <span class="path11"></span>
                                  <span class="path12"></span>
                                  <span class="path13"></span>
                                  <span class="path14"></span>
                                  <span class="path15"></span>
                                  <span class="path16"></span>
                                  <span class="path17"></span>
                                  <span class="path18"></span>
                                  <span class="path19"></span>
                                  <span class="path20"></span>
                                  <span class="path21"></span>
                                </i>
                              </span>
                            </div>
                            <div class="mb-0 me-2">
                              <a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">Icon Assets</a>
                              <div class="text-gray-500 fs-7">Collection of SVG icons</div>
                            </div>
                          </div>
                          <span class="badge badge-light fs-8">20 March</span>
                        </div>

                      </div>
                     
                    </div>                       
                  </div>
                </div>
              </div>
              
              <div class="app-navbar-item ms-1 ms-md-4" id="kt_header_user_menu_toggle">
                <div class="cursor-pointer symbol symbol-35px" data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
                  <img src="assets/media/avatars/300-3.jpg" class="rounded-3" alt="user" />
                </div>
                <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg menu-state-color fw-semibold py-4 fs-6 w-275px" data-kt-menu="true">
                  <div class="menu-item px-3">
                    <div class="menu-content d-flex align-items-center px-3">
                      <div class="symbol symbol-50px me-5">
                        <img src="assets/media/avatars/300-3.jpg" />
                      </div>
                      <div class="d-flex flex-column">
                        <div class="fw-bold d-flex align-items-center fs-5">Robert Fox</div>
                      </div>
                    </div>
                  </div>
                  <div class="separator my-2"></div>
                  <div class="menu-item px-5">
                    <a href="authentication/layouts/corporate/sign-in.html" class="menu-link px-5">Çıkış Yap</a>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
      <div className="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
        <div id="kt_app_sidebar" className="app-sidebar flex-column" data-kt-drawer="true" data-kt-drawer-name="app-sidebar" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="225px" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_app_sidebar_mobile_toggle">
          <div className="app-sidebar-logo px-6 mt-5 d-flex justify-content-center" id="kt_app_sidebar_logo">
            <a href="index.html">
              <img alt="Logo" src="/images/logo-hayvanli-beyaz-bg-transparan.png" className="h-75px app-sidebar-logo-default" />
              <img alt="Logo" src="/images/logo-hayvanli-beyaz-bg-transparan.png" className="h-20px app-sidebar-logo-minimize" /> 
            </a>
            <div id="kt_app_sidebar_toggle" className="app-sidebar-toggle btn btn-icon btn-shadow btn-sm btn-color-muted btn-active-color-primary h-30px w-30px position-absolute top-50 start-100 translate-middle rotate" data-kt-toggle="true" data-kt-toggle-state="active" data-kt-toggle-target="body" data-kt-toggle-name="app-sidebar-minimize">
              <i className="ki-duotone ki-black-left-line fs-3 rotate-180">
                <span className="path1"></span>
                <span className="path2"></span>
              </i>
            </div>
          </div>
          <div className="app-sidebar-menu overflow-hidden flex-column-fluid">
            <div id="kt_app_sidebar_menu_wrapper" className="app-sidebar-wrapper">
              <div id="kt_app_sidebar_menu_scroll" className="scroll-y my-5 mx-3" data-kt-scroll="true" data-kt-scroll-activate="true" data-kt-scroll-height="auto" data-kt-scroll-dependencies="#kt_app_sidebar_logo, #kt_app_sidebar_footer" data-kt-scroll-wrappers="#kt_app_sidebar_menu" data-kt-scroll-offset="5px" data-kt-scroll-save-state="true">
                <div className="menu menu-column menu-rounded menu-sub-indention fw-semibold fs-6" id="#kt_app_sidebar_menu" data-kt-menu="true" data-kt-menu-expand="false">
                 
                  <div class="menu-item pt-5">
                    <div class="menu-content">
                      <span class="menu-heading fw-bold text-uppercase fs-7">İşlemler</span>
                    </div>
                  </div>
                  <div class="menu-item">
                    <a class="menu-link" href="" >
                      <span class="menu-icon">
                      <i class="bi bi-house-door-fill fs-2"></i>
                      </span>
                      <span class="menu-title">Anasayfa</span>
                    </a>
                  </div>  
                  <div class="menu-item">
                    <a class="menu-link" href="" >
                      <span class="menu-icon">
                      <i class="bi bi-calendar2-check-fill fs-2"></i>
                      </span>
                      <span class="menu-title">Randevularım</span>
                    </a>
                  </div>                      
                  <div class="menu-item">
                    <a class="menu-link" href="" >
                      <span class="menu-icon">
                      <i class="bi bi-heart-fill fs-2"></i>
                      </span>
                      <span class="menu-title">Evcil Hayvanlar</span>
                    </a>
                  </div>
                  <div class="menu-item">
                    <a class="menu-link" href="" >
                      <span class="menu-icon">
                      <i class="bi bi-person-fill fs-2"></i>
                      </span>
                      <span class="menu-title">Hesabım</span>
                    </a>
                  </div>

                </div>
              </div>
            </div>
          </div>
         
          <div className="app-sidebar-footer flex-column-auto pt-2 pb-6 px-6" id="kt_app_sidebar_footer">
            <a href="" className="btn btn-flex flex-center btn-custom btn-primary overflow-hidden text-nowrap px-0 h-40px w-100 mb-3" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-dismiss-="click" >
                <span className="btn-label"> <i class="bi bi-question-circle-fill fs-3 me-2"></i>Destek</span>
                <i class="bi bi-question-circle-fill btn-icon fs-2 m-0"></i>                   
              </a>
            <a href="" className="btn btn-flex flex-center btn-custom btn-primary overflow-hidden text-nowrap px-0 h-40px w-100" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-dismiss-="click" >
              <span className="btn-label"><i class="bi bi-file-earmark-fill fs-3 me-2"></i>Hakkımızda</span>
              <i class="bi bi-file-earmark-fill btn-icon fs-2 m-0"></i>
            </a>
          </div>
        </div>
        <div className="app-main flex-column flex-row-fluid" id="kt_app_main">
          <div className="d-flex flex-column flex-column-fluid">
            <div id="kt_app_content" className="app-content flex-column-fluid">
              <div id="kt_app_content_container" className="app-container container-fluid p-5">
                <div className="card card-content">
                 {children}
                </div>                                   
              </div>
            </div>
          </div>
          <div id="kt_app_footer" className="app-footer">
            <div className="app-container container-fluid d-flex flex-column flex-md-row flex-center flex-md-stack py-3">
              <div className="text-gray-900 order-2 order-md-1">
                <span className="text-muted fw-semibold me-1">2024 &copy;</span>
                <a href="#" className="text-gray-800 text-hover-primary">e-PET</a>
              </div>
              <ul className="menu menu-gray-600 menu-hover-primary fw-semibold order-1">
                <li className="menu-item">
                </li>									
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    );
}

export default VeterinerLayout;


