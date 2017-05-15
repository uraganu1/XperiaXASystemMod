.class Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcPaymentPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsAuthorizedReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;


# direct methods
.method private constructor <init>(Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;->this$1:Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;-><init>(Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 435
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sonymobile.nfc.action.VERIFY_CERTIFICATE_RSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;->this$1:Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;

    .line 438
    const-string/jumbo v2, "com.sonymobile.nfc.extra.VERIFY_CERTIFICATE_RESULT"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 437
    invoke-static {v1, v2}, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->-set0(Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;Z)Z

    .line 441
    const-string/jumbo v1, "com.sonymobile.nfc.extra.VERIFY_CERTIFICATE_PACKAGENAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner$IsAuthorizedReceiver;->this$1:Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->-get0(Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 434
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
