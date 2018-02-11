.class Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;
.super Landroid/os/AsyncTask;
.source "NfcPaymentPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPaymentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertificateVerificationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcPaymentPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/nfc/NfcPaymentPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/nfc/NfcPaymentPreference;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nfc/NfcPaymentPreference;Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/nfc/NfcPaymentPreference;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;-><init>(Lcom/android/settings/nfc/NfcPaymentPreference;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 285
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 286
    iget-object v6, p0, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {v6}, Lcom/android/settings/nfc/NfcPaymentPreference;->-get3(Lcom/android/settings/nfc/NfcPaymentPreference;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v2

    .line 287
    .local v2, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-nez v2, :cond_0

    .line 288
    return-object v7

    .line 291
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v5, "newDummyAppInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 294
    .local v0, "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 295
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 311
    .end local v0    # "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_1
    return-object v5

    .line 298
    .restart local v0    # "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_2
    new-instance v4, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;

    iget-object v6, p0, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    .line 299
    iget-object v7, p0, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {v7}, Lcom/android/settings/nfc/NfcPaymentPreference;->-get1(Lcom/android/settings/nfc/NfcPaymentPreference;)Landroid/content/Context;

    move-result-object v7

    .line 298
    invoke-direct {v4, v6, v7, v0}, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;-><init>(Lcom/android/settings/nfc/NfcPaymentPreference;Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 300
    .local v4, "dummyAppBanner":Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;
    new-instance v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-direct {v3}, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;-><init>()V

    .line 301
    .local v3, "dummyApp":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v6, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    iput-object v6, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 302
    iget-object v6, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    iput-object v6, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    .line 303
    invoke-virtual {v4}, Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;->getDrawableBanner()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    .line 304
    iget-boolean v6, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    iput-boolean v6, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    .line 305
    iget-object v6, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    iput-object v6, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 306
    iget-object v6, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    iput-object v6, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    .line 308
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dummyAppInfos"    # Ljava/lang/Object;

    .prologue
    .line 315
    check-cast p1, Ljava/util/List;

    .end local p1    # "dummyAppInfos":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dummyAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    const/4 v3, 0x0

    .line 316
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {v2}, Lcom/android/settings/nfc/NfcPaymentPreference;->-get3(Lcom/android/settings/nfc/NfcPaymentPreference;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 317
    .local v0, "defaultApp":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz p1, :cond_0

    .line 319
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 318
    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 320
    .local v1, "dummyApps":[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {v2}, Lcom/android/settings/nfc/NfcPaymentPreference;->-get0(Lcom/android/settings/nfc/NfcPaymentPreference;)Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 323
    .end local v1    # "dummyApps":[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {v2, v3}, Lcom/android/settings/nfc/NfcPaymentPreference;->-set0(Lcom/android/settings/nfc/NfcPaymentPreference;Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;)Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;

    .line 315
    return-void
.end method
