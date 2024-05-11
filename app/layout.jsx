
import "../styles/global.css";

export default function RootLayout({children}) {
  return (
    <html lang="tr">
      <head>
        <title>e-pET</title>
        <link rel="icon" href="/images/favicon.ico"/>
        <link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
        <link href="/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
      </head>
      <body id="kt_app_body" data-kt-app-layout="dark-sidebar" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" className="app-default">
      <div className="d-flex flex-column flex-root app-root" id="kt_app_root">
          {children}
        </div>
        <script src="/assets/plugins/global/plugins.bundle.js"></script>
        <script src="/assets/js/scripts.bundle.js"></script>
      </body> 
    </html>
  );
}
