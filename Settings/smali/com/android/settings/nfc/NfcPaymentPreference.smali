.class public Lcom/android/settings/nfc/NfcPaymentPreference;
.super Landroid/preference/DialogPreference;
.source "NfcPaymentPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;,
        Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;,
        Lcom/android/settings/nfc/NfcPaymentPreference$DummyPaymentAppBanner;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

.field private mCertificateVerificationTask:Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mSettingsButtonView:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/android/settings/nfc/NfcPaymentPreference;)Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/nfc/NfcPaymentPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/nfc/NfcPaymentPreference;)Lcom/android/settings/nfc/PaymentBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/nfc/NfcPaymentPreference;Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;)Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mCertificateVerificationTask:Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings/nfc/PaymentBackend;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 78
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p2, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    .line 80
    new-instance v0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;-><init>(Lcom/android/settings/nfc/NfcPaymentPreference;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    .line 81
    const v0, 0x7f0b09e0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 82
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 83
    const v0, 0x7f0400c3

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->setWidgetLayoutResource(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->refresh()V

    .line 75
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 92
    const v0, 0x7f130154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    .line 89
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 142
    .local v0, "defaultAppInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 143
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, "settingsIntent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 145
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local v2    # "settingsIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "NfcPaymentPreference"

    const-string/jumbo v4, "Settings activity not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mCertificateVerificationTask:Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mCertificateVerificationTask:Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->cancel(Z)Z

    .line 451
    :cond_0
    return-void
.end method

.method public onPaymentAppsChanged()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->refresh()V

    .line 135
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->refresh()V

    .line 457
    return-void
.end method

.method public refresh()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 102
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v2

    .line 104
    .local v2, "defaultApp":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 106
    .local v1, "apps":[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 108
    .end local v1    # "apps":[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_0
    const v3, 0x7f0b09d8

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/NfcPaymentPreference;->setTitle(I)V

    .line 109
    if-eqz v2, :cond_2

    .line 110
    iget-object v3, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    .line 118
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mCertificateVerificationTask:Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;

    if-eqz v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mCertificateVerificationTask:Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;

    invoke-virtual {v3, v6}, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->cancel(Z)Z

    .line 121
    :cond_1
    new-instance v3, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;-><init>(Lcom/android/settings/nfc/NfcPaymentPreference;Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;)V

    iput-object v3, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mCertificateVerificationTask:Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;

    .line 122
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mCertificateVerificationTask:Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/settings/nfc/NfcPaymentPreference$CertificateVerificationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    return-void

    .line 112
    :cond_2
    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0b09d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateSettingsVisibility()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 157
    .local v0, "defaultApp":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    .end local v0    # "defaultApp":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_1
    :goto_0
    return-void

    .line 160
    .restart local v0    # "defaultApp":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
