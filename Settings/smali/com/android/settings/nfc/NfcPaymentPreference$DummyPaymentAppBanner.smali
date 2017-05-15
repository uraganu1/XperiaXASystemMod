.class Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;
.super Ljava/lang/Object;
.source "NfcPaymentPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPaymentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DummyPaymentAppBanner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;
    }
.end annotation


# instance fields
.field private mAuthorizationCondition:Landroid/os/ConditionVariable;

.field private mContext:Landroid/content/Context;

.field private mDrawableBanner:Landroid/graphics/drawable/Drawable;

.field private volatile mHasCertificate:Z

.field private mIsAuthRec:Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;

.field final synthetic this$0:Lcom/android/settings/nfc/NfcPaymentPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mAuthorizationCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mHasCertificate:Z

    return p1
.end method

.method constructor <init>(Lcom/android/settings/nfc/NfcPaymentPreference;Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/nfc/NfcPaymentPreference;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "paymentAppInfo"    # Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mAuthorizationCondition:Landroid/os/ConditionVariable;

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mHasCertificate:Z

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mIsAuthRec:Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;

    .line 345
    iput-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mContext:Landroid/content/Context;

    .line 346
    invoke-direct {p0, p3}, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->initDrawableBanner(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 344
    return-void
.end method

.method private initDrawableBanner(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 11
    .param p1, "paymentAppInfo"    # Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .prologue
    .line 351
    :try_start_0
    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->isAuthorized(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 353
    const v2, 0x7f02001f

    .line 352
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 354
    .local v10, "okIcon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x2

    new-array v7, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, v7, v2

    const/4 v1, 0x1

    aput-object v10, v7, v1

    .line 355
    .local v7, "drawableArray":[Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 357
    .local v0, "okBanner":Landroid/graphics/drawable/LayerDrawable;
    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 358
    .local v6, "bannerBitmap":Landroid/graphics/Bitmap;
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .end local v10    # "okIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 360
    .local v9, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    if-nez v9, :cond_1

    .line 361
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bannerBitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    const-string/jumbo v3, ", iconBitmap = "

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v0    # "okBanner":Landroid/graphics/drawable/LayerDrawable;
    .end local v6    # "bannerBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "drawableArray":[Landroid/graphics/drawable/Drawable;
    .end local v9    # "iconBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 379
    .local v8, "e":Ljava/lang/Exception;
    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mDrawableBanner:Landroid/graphics/drawable/Drawable;

    .line 349
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 367
    .restart local v0    # "okBanner":Landroid/graphics/drawable/LayerDrawable;
    .restart local v6    # "bannerBitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "drawableArray":[Landroid/graphics/drawable/Drawable;
    .restart local v9    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x10

    .line 368
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v5, v1, 0x8

    .line 366
    const/4 v1, 0x1

    .line 367
    const/4 v3, -0x8

    const/16 v4, -0x10

    .line 366
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 370
    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mDrawableBanner:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 372
    .end local v0    # "okBanner":Landroid/graphics/drawable/LayerDrawable;
    .end local v6    # "bannerBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "drawableArray":[Landroid/graphics/drawable/Drawable;
    .end local v9    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mDrawableBanner:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private declared-synchronized isAuthorized(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mAuthorizationCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mHasCertificate:Z

    .line 397
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->triggerAuthorization(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mAuthorizationCondition:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mIsAuthRec:Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 404
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mHasCertificate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private triggerAuthorization(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 414
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mIsAuthRec:Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;

    if-nez v1, :cond_0

    .line 416
    new-instance v1, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;-><init>(Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mIsAuthRec:Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mIsAuthRec:Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;

    .line 420
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.sonymobile.nfc.action.VERIFY_CERTIFICATE_RSP"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.sonymobile.permission.SMARTCARD_NFC_AUTHORIZATION"

    .line 419
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 421
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v0, "authReqIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.nfc.action.VERIFY_CERTIFICATE_REQ"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string/jumbo v1, "com.sonymobile.nfc.extra.VERIFY_CERTIFICATE_PACKAGENAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sonymobile.permission.SMARTCARD_NFC_AUTHORIZATION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 412
    return-void
.end method


# virtual methods
.method getDrawableBanner()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->mDrawableBanner:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
