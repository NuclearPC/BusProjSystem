<%--
  Created by IntelliJ IDEA.
  User: bryantreyn
  Date: 2020/9/4
  Time: 1:36 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用文档</title>

    <meta name="viewport" content="width=device-width,initial-scale=0.6, minimum-scale=0.6, maximum-scale=0.6, user-scalable=yes"/>
    <meta name="keywords" content="QRCode,西线公交,1147,西线公交1147">
    <link href="img/bus.png" rel="icon" type="image/x-icon" />

    <!-- CSS only -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- JS, Popper.js, and jQuery -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

</head>
<body>

<ul class="list-unstyled">
    <hr>
    <li class="media">
        <img src="img/download.png" class="mr-3" width="32px" height="32px">
        <div class="media-body">
            <h5 class="mt-0 mb-1">下载二维码</h5>
            <img src="img/anzhuo.png" class="mr-3" width="32px" height="32px"><br />
            安卓用户尚未添加下载二维码功能 <br />
            安卓用戶尚未添加下載二維碼功能<br />
            Android users have not added the downloading QR code function<br />
            Gli utenti Android non hanno aggiunto la funzione di download del codice QR<br />
            Los usuarios de Android no han agregado la función de descarga de código QR<br />
            Les utilisateurs d'Android n'ont pas ajouté la fonction de téléchargement de code QR<br />
            Android-Benutzer haben die Funktion zum Herunterladen des QR-Codes nicht hinzugefügt<br />
            AndroidユーザーはQRコードのダウンロード機能を追加していません<br />
            Android 사용자는 QR 코드 다운로드 기능을 추가하지 않았습니다.<br />
            <img src="img/apple.png" class="mr-3" width="32px" height="32px"><br />
            苹果用户可以通过Safari浏览器(其他浏览器支持打开大图)下载图片到本地 <br />
            蘋果用戶可以通過Safari瀏覽器(其他瀏覽器支持打開大圖)下載圖片到本地<br />
            Apple users can download pictures to local through Safari browser (other browsers support opening large pictures)<br />
            Les utilisateurs d'Apple peuvent télécharger des images en local via le navigateur Safari (d'autres navigateurs prennent en charge l'ouverture de grandes images)<br />
            Apple-Benutzer können Bilder über den Safari-Browser lokal herunterladen (andere Browser unterstützen das Öffnen großer Bilder).<br />
            Los usuarios de Apple pueden descargar imágenes en local a través del navegador Safari (otros navegadores admiten la apertura de imágenes grandes)<br />
            Gli utenti Apple possono scaricare immagini in locale tramite il browser Safari (altri browser supportano l'apertura di immagini di grandi dimensioni)<br />
            AppleユーザーはSafariブラウザを介してローカルに画像をダウンロードできます（他のブラウザは大きな画像を開くことをサポートしています）<br />
            Apple 사용자는 Safari 브라우저를 통해 로컬로 사진을 다운로드 할 수 있습니다 (다른 브라우저는 큰 사진 열기를 지원함). <br />
        </div>
    </li>
    <hr>
    <li class="media my-4">
        <img src="img/refresh.png" class="mr-3" width="32px" height="32px">
        <div class="media-body">
            <h5 class="mt-0 mb-1">刷新二维码</h5>
            <img src="img/anzhuo.png" class="mr-3" width="32px" height="32px"><img src="img/apple.png" class="mr-3" width="32px" height="32px"><br />
            当二维码无法正常显示点击刷新二维码，重新加载二维码 <br />
            當二維碼無法正常顯示點擊刷新二維碼，重新加載二維碼<br />
            When the QR code cannot be displayed normally, click Refresh the QR code to reload the QR code<br />
            Lorsque le code QR ne peut pas être affiché normalement, cliquez sur Actualiser le code QR pour recharger le code QR<br />
            Wenn der QR-Code nicht normal angezeigt werden kann, klicken Sie auf QR-Code aktualisieren, um den QR-Code neu zu laden<br />
            Cuando el código QR no se puede mostrar normalmente, haga clic en Actualizar el código QR para volver a cargar el código QR<br />
            Quando il codice QR non può essere visualizzato normalmente, fare clic su Aggiorna il codice QR per ricaricare il codice QR<br />
            QRコードが正常に表示されない場合は、[QRコードを更新]をクリックしてQRコードを再読み込みします<br />
            QR 코드가 정상적으로 표시되지 않는 경우 QR 코드 새로 고침을 클릭하여 QR 코드를 다시로드하십시오.<br />
        </div>
    </li>
    <hr>
    <li class="media">
        <img src="img/qrcode.png" class="mr-3" width="32px" height="32px">
        <div class="media-body">
            <h5 class="mt-0 mb-1">微信扫一扫</h5>
            <img src="img/anzhuo.png" class="mr-3" width="32px" height="32px"><img src="img/apple.png" class="mr-3" width="32px" height="32px"><br />
            当采用系统浏览器打开系统，支持跳转微信扫码。 <br />
            當採用系統瀏覽器打開系統，支持跳轉微信掃碼。<br />
            When using the system browser to open the system, you can jump to WeChat to scan codes.<br />
            Lorsque vous utilisez le navigateur système pour ouvrir le système, vous pouvez accéder à WeChat pour scanner les codes.<br />
            Wenn Sie den Systembrowser zum Öffnen des Systems verwenden, können Sie zu WeChat springen, um Codes zu scannen.<br />
            Cuando use el navegador del sistema para abrir el sistema, puede saltar a WeChat para escanear códigos.<br />
            Quando si utilizza il browser di sistema per aprire il sistema, è possibile passare a WeChat per eseguire la scansione dei codici.<br />
            システムブラウザを使用してシステムを開く場合、WeChatにジャンプしてコードをスキャンできます。<br />
            시스템 브라우저를 사용하여 시스템을 열 때 WeChat으로 이동하여 코드를 스캔 할 수 있습니다.<br />
        </div>
    </li>
    <hr>
    <li class="media">
        <img src="img/write.png" class="mr-3" width="32px" height="32px">
        <div class="media-body">
            <h5 class="mt-0 mb-1">意见反馈</h5>
            <img src="img/anzhuo.png" class="mr-3" width="32px" height="32px"><img src="img/apple.png" class="mr-3" width="32px" height="32px"><br />
            用户对系统存在的问题和公司建议/意见可匿名进行发送到开发者邮箱中 <br />
            用戶對系統存在的問題和公司建議/意見可匿名進行發送到開發者郵箱中<br />
            Users’ problems with the system and company suggestions/comments can be sent anonymously to the developer’s mailbox<br />
            Les problèmes des utilisateurs avec le système et les suggestions / commentaires de l'entreprise peuvent être envoyés de manière anonyme à la boîte aux lettres du développeur<br />
            Probleme der Benutzer mit dem System und Unternehmensvorschläge / -kommentare können anonym an die Mailbox des Entwicklers gesendet werden<br />
            Los problemas de los usuarios con el sistema y las sugerencias / comentarios de la empresa se pueden enviar de forma anónima al buzón del desarrollador.<br />
            I problemi degli utenti con il sistema e i suggerimenti / commenti dell'azienda possono essere inviati in modo anonimo alla casella di posta dello sviluppatore<br />
            システムに関するユーザーの問題と会社の提案/コメントは、開発者のメールボックスに匿名で送信できます<br />
            사용자의 시스템 문제 및 회사 제안 / 댓글을 개발자의 사서함으로 익명으로 보낼 수 있습니다.<br />
        </div>
    </li>
    <hr>
    <li class="media">
        <img src="img/touch.png" class="mr-3" width="32px" height="32px">
        <div class="media-body">
            <h5 class="mt-0 mb-1">长按二维码图片</h5>
            <img src="img/anzhuo.png" class="mr-3" width="32px" height="32px"><img src="img/apple.png" class="mr-3" width="32px" height="32px"><br />
            长按二维码图片,扫码加群或下载二维码，在扫码加群 <br />
            長按二維碼圖片,掃碼加群或下載二維碼，在掃碼加群<br />
            Long press the QR code picture, scan the code to add a group or download the QR code, scan the code to add a group<br />
            Appuyez longuement sur l'image du code QR, scannez le code pour ajouter un groupe ou téléchargez le code QR, scannez le code pour ajouter un groupe<br />
            Drücken Sie lange auf das QR-Code-Bild, scannen Sie den Code, um eine Gruppe hinzuzufügen, oder laden Sie den QR-Code herunter, scannen Sie den Code, um eine Gruppe hinzuzufügen<br />
            Mantenga presionada la imagen del código QR, escanee el código para agregar un grupo o descargue el código QR, escanee el código para agregar un grupo<br />
            Premi a lungo l'immagine del codice QR, scansiona il codice per aggiungere un gruppo o scarica il codice QR, scansiona il codice per aggiungere un gruppo<br />
            QRコード画像を長押しし、コードをスキャンしてグループを追加するか、QRコードをダウンロードし、コードをスキャンしてグループを追加します<br />
            QR 코드 사진을 길게 누르고 코드를 스캔하여 그룹을 추가하거나 QR 코드를 다운로드하고 코드를 스캔하여 그룹을 추가합니다.<br />
        </div>
    </li>
    <hr>
</ul>

</body>
</html>
