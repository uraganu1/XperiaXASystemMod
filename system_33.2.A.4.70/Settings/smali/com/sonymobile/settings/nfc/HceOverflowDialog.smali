.class public Lcom/sonymobile/settings/nfc/HceOverflowDialog;
.super Landroid/app/Activity;
.source "HceOverflowDialog.java"


# instance fields
.field private mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    .line 52
    return-void
.end method

.method private getDefaultPaymentApp()Landroid/content/ComponentName;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 121
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v5, "payment"

    invoke-virtual {v4, v5}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 122
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v3, :cond_0

    return-object v6

    .line 124
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 125
    .local v1, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 126
    .local v0, "service":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v5, "payment"

    invoke-virtual {v4, v0, v5}, Landroid/nfc/cardemulation/CardEmulation;->isDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    return-object v0

    .line 130
    .end local v0    # "service":Landroid/content/ComponentName;
    .end local v1    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_2
    return-object v6
.end method


# virtual methods
.method public CancelCurrentSettings()V
    .locals 6

    .prologue
    .line 98
    invoke-static {}, Lcom/sonymobile/settings/nfc/HceReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.sonymobile.nfc.extra.OLD_DEFAULT_SERVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 102
    .local v1, "oldDefaultService":Landroid/content/ComponentName;
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    .line 104
    const-string/jumbo v3, "HceOverflowDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CancelCurrentSettings()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    :cond_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 113
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sonymobile.nfc.action.REFRESH_PAYMENT_BACKEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "refreshIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0c90

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0c91

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 69
    const/4 v5, 0x0

    .line 67
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 70
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0c97

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    new-instance v6, Lcom/sonymobile/settings/nfc/HceOverflowDialog$1;

    invoke-direct {v6, p0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog$1;-><init>(Lcom/sonymobile/settings/nfc/HceOverflowDialog;)V

    .line 67
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 82
    new-instance v5, Lcom/sonymobile/settings/nfc/HceOverflowDialog$2;

    invoke-direct {v5, p0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog$2;-><init>(Lcom/sonymobile/settings/nfc/HceOverflowDialog;)V

    .line 81
    const/high16 v6, 0x1040000

    .line 67
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 90
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 62
    return-void
.end method

.method public setDefaultPaymentApp(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v1, "payment"

    invoke-virtual {v0, p1, v1}, Landroid/nfc/cardemulation/CardEmulation;->setDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 133
    return-void
.end method
