.class public Lcom/mediatek/wifi/WifiConfigControllerExt;
.super Ljava/lang/Object;
.source "WifiConfigControllerExt.java"


# static fields
.field private static sWFATestFlag:Ljava/lang/String;


# instance fields
.field private mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/settings/wifi/WifiConfigController;

.field private mExt:Lcom/mediatek/settings/ext/IWifiExt;

.field private mHex:Z

.field private mSimSlot:Landroid/widget/Spinner;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mView:Landroid/view/View;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiClientCert:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->sWFATestFlag:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigController;Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/settings/wifi/WifiConfigController;
    .param p2, "configUi"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    .line 87
    iput-object p2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 88
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mContext:Landroid/content/Context;

    .line 89
    iput-object p3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 92
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mContext:Landroid/content/Context;

    .line 93
    const-string/jumbo v1, "phone"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 85
    return-void
.end method

.method public static addQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private eapSimAkaSimSlotConfig(Landroid/net/wifi/WifiConfiguration;Landroid/widget/Spinner;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "eapMethodSpinner"    # Landroid/widget/Spinner;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 234
    const-string/jumbo v1, "WifiConfigControllerExt"

    const-string/jumbo v2, "mSimSlot is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v2, 0x7f1302cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    .line 239
    :cond_0
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 240
    .local v0, "eapMethod":I
    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/WifiConfigControllerExt;->getEapMethod(I)I

    move-result v0

    .line 243
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 244
    const/4 v2, 0x2

    .line 243
    if-ne v1, v2, :cond_1

    .line 251
    packed-switch v0, :pswitch_data_0

    .line 270
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unknown EAP method"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :pswitch_0
    const-string/jumbo v1, "0"

    invoke-static {v1}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 261
    const-string/jumbo v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "config.simSlot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-static {v3}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    :pswitch_1
    const-string/jumbo v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eap-sim, config.simSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 266
    :pswitch_2
    const-string/jumbo v1, "1"

    invoke-static {v1}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 267
    const-string/jumbo v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "config.simSlot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-static {v3}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_1
    const-string/jumbo v1, "0"

    invoke-static {v1}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private isWEPKeyValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 153
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    return v2

    .line 156
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 157
    .local v0, "keyLength":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_5

    .line 158
    :cond_2
    :goto_0
    const-string/jumbo v1, "[0-9A-Fa-f]*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 157
    if-nez v1, :cond_4

    .line 159
    :cond_3
    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 160
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 157
    :cond_5
    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 159
    :cond_6
    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    .line 162
    return v2
.end method

.method private static isWFATestSupported()Z
    .locals 3

    .prologue
    .line 746
    sget-object v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->sWFATestFlag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 747
    const-string/jumbo v0, "persist.radio.wifi.wpa2wpaalone"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->sWFATestFlag:Ljava/lang/String;

    .line 748
    const-string/jumbo v0, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWFATestSupported(), sWFATestFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wifi/WifiConfigControllerExt;->sWFATestFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_0
    const-string/jumbo v0, "true"

    sget-object v1, Lcom/mediatek/wifi/WifiConfigControllerExt;->sWFATestFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 9
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 506
    iget-object v5, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 507
    .local v3, "context":Landroid/content/Context;
    const v5, 0x7f0b0396

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, "unspecifiedCert":Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    .line 510
    const/16 v6, 0x3f2

    .line 509
    invoke-virtual {v5, p2, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "certs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 512
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    .end local v2    # "certs":[Ljava/lang/String;
    aput-object v4, v2, v7

    .line 520
    .restart local v2    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 521
    const v5, 0x1090008

    .line 520
    invoke-direct {v0, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 523
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    .line 522
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 524
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 505
    return-void

    .line 514
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 515
    .local v1, "array":[Ljava/lang/String;
    aput-object v4, v1, v7

    .line 516
    array-length v5, v2

    invoke-static {v2, v7, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    move-object v2, v1

    goto :goto_0
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "cert"    # Ljava/lang/String;

    .prologue
    .line 486
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 485
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 492
    if-eqz p2, :cond_0

    .line 494
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 496
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 497
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 491
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 496
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private switchWlanSecuritySpinner(Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "securitySpinner"    # Landroid/widget/Spinner;

    .prologue
    const/16 v2, 0x8

    .line 696
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f1302af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f1302be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f1302bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f1302bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f1302bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 706
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 695
    return-void
.end method


# virtual methods
.method public addViews(Lcom/android/settings/wifi/WifiConfigUiBase;Ljava/lang/String;)V
    .locals 6
    .param p1, "configUi"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p2, "security"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f130034

    .line 97
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v3, 0x7f1302ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 99
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 100
    const v3, 0x7f040159

    const/4 v4, 0x0

    .line 99
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "row":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 102
    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0381

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {v3, v2}, Lcom/mediatek/settings/ext/IWifiExt;->setSecurityText(Landroid/widget/TextView;)V

    .line 104
    const v2, 0x7f1302f2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method public addWifiConfigView(Z)V
    .locals 8
    .param p1, "edit"    # Z

    .prologue
    .line 627
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v5, 0x7f1302ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 628
    .local v1, "securityText":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v4, v1}, Lcom/mediatek/settings/ext/IWifiExt;->setSecurityText(Landroid/widget/TextView;)V

    .line 629
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v4

    if-nez v4, :cond_7

    .line 631
    const v3, 0x7f1302af

    .line 632
    .local v3, "viewId":I
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_WAPI_SUPPORT:Z

    if-eqz v4, :cond_5

    .line 633
    const-string/jumbo v4, "persist.sys.wlan"

    .line 634
    const-string/jumbo v5, "wifi-wapi"

    .line 633
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v4, "wifi-wapi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 636
    invoke-static {}, Lcom/mediatek/wifi/WifiConfigControllerExt;->isWFATestSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 637
    const v3, 0x7f1302bb

    .line 663
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    invoke-direct {p0, v4}, Lcom/mediatek/wifi/WifiConfigControllerExt;->switchWlanSecuritySpinner(Landroid/widget/Spinner;)V

    .line 679
    .end local v3    # "viewId":I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    check-cast v4, Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPointState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    .line 680
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPointConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 679
    invoke-interface {v5, v4, p1, v6, v7}, Lcom/mediatek/settings/ext/IWifiExt;->addDisconnectButton(Landroid/app/AlertDialog;ZLandroid/net/NetworkInfo$DetailedState;Landroid/net/wifi/WifiConfiguration;)V

    .line 683
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    new-instance v5, Lcom/mediatek/settings/ext/IWifiExt$Builder;

    invoke-direct {v5}, Lcom/mediatek/settings/ext/IWifiExt$Builder;-><init>()V

    .line 684
    iget-object v6, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v6

    .line 683
    invoke-virtual {v5, v6}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setAccessPoint(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v5

    .line 686
    iget-object v6, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    .line 683
    invoke-virtual {v5, v6}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setViews(Landroid/view/View;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v5

    .line 686
    iget-object v6, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 683
    invoke-interface {v4, v5, v6}, Lcom/mediatek/settings/ext/IWifiExt;->hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V

    .line 625
    return-void

    .line 641
    .restart local v2    # "type":Ljava/lang/String;
    .restart local v3    # "viewId":I
    :cond_1
    const v3, 0x7f1302af

    goto :goto_0

    .line 643
    :cond_2
    const-string/jumbo v4, "wifi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 644
    invoke-static {}, Lcom/mediatek/wifi/WifiConfigControllerExt;->isWFATestSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 645
    const v3, 0x7f1302bd

    goto :goto_0

    .line 649
    :cond_3
    const v3, 0x7f1302bc

    goto :goto_0

    .line 651
    :cond_4
    const-string/jumbo v4, "wapi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 652
    const v3, 0x7f1302be

    goto :goto_0

    .line 655
    .end local v2    # "type":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/mediatek/wifi/WifiConfigControllerExt;->isWFATestSupported()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 656
    const v3, 0x7f1302bd

    goto :goto_0

    .line 660
    :cond_6
    const v3, 0x7f1302bc

    goto :goto_0

    .line 665
    .end local v3    # "viewId":I
    :cond_7
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPointConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 666
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v4, "WifiConfigControllerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addWifiConfigView, config = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v4, v0}, Lcom/mediatek/settings/ext/IWifiExt;->setAPNetworkId(Landroid/net/wifi/WifiConfiguration;)V

    .line 670
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    .line 671
    const-string/jumbo v4, "WifiConfigControllerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "priority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-interface {v4, v5}, Lcom/mediatek/settings/ext/IWifiExt;->setAPPriority(I)V

    .line 675
    :cond_8
    iget-object v5, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v6, 0x7f1302d7

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-interface {v5, v4, v0, p1}, Lcom/mediatek/settings/ext/IWifiExt;->setPriorityView(Landroid/widget/LinearLayout;Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_1
.end method

.method public enableSubmitIfAppropriate(Landroid/widget/TextView;IZ)Z
    .locals 3
    .param p1, "passwordView"    # Landroid/widget/TextView;
    .param p2, "accessPointSecurity"    # I
    .param p3, "pwInvalid"    # Z

    .prologue
    const/16 v2, 0x8

    .line 119
    move v0, p3

    .line 121
    .local v0, "passwordInvalid":Z
    if-eqz p1, :cond_2

    .line 122
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/wifi/WifiConfigControllerExt;->isWEPKeyValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 125
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ge v1, v2, :cond_4

    .line 130
    :cond_1
    const/4 v0, 0x1

    .line 134
    .end local v0    # "passwordInvalid":Z
    :cond_2
    :goto_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    if-eqz v1, :cond_5

    .line 136
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_5

    .line 139
    :goto_1
    const/4 v0, 0x1

    .line 142
    :cond_3
    return v0

    .line 126
    .restart local v0    # "passwordInvalid":Z
    :cond_4
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 127
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v1

    const/16 v2, 0x40

    if-lt v2, v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mHex:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    const-string/jumbo v2, "[0-9A-Fa-f]*"

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 137
    .end local v0    # "passwordInvalid":Z
    :cond_5
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method public getEapMethod(I)I
    .locals 4
    .param p1, "eapMethod"    # I

    .prologue
    .line 540
    const-string/jumbo v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEapMethod, eapMethod = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    move v0, p1

    .line 542
    .local v0, "result":I
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 544
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v2

    .line 545
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v3

    .line 543
    invoke-interface {v1, p1, v2, v3}, Lcom/mediatek/settings/ext/IWifiExt;->getEapMethodbySpinnerPos(ILjava/lang/String;I)I

    move-result v0

    .line 547
    :cond_0
    const-string/jumbo v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEapMethod, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return v0
.end method

.method public getSecurity(I)I
    .locals 5
    .param p1, "accessPointSecurity"    # I

    .prologue
    const/4 v4, 0x2

    .line 714
    const-string/jumbo v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSecurity, accessPointSecurity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_WAPI_SUPPORT:Z

    if-eqz v1, :cond_3

    .line 717
    const-string/jumbo v1, "persist.sys.wlan"

    .line 718
    const-string/jumbo v2, "wifi-wapi"

    .line 717
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "wapi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez p1, :cond_1

    .line 720
    add-int/lit8 p1, p1, 0x3

    .line 738
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSecurity, accessPointSecurity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return p1

    .line 722
    .restart local v0    # "type":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 723
    invoke-static {}, Lcom/mediatek/wifi/WifiConfigControllerExt;->isWFATestSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    if-le p1, v4, :cond_0

    .line 725
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 727
    :cond_2
    const-string/jumbo v1, "wifi-wapi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    invoke-static {}, Lcom/mediatek/wifi/WifiConfigControllerExt;->isWFATestSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    if-le p1, v4, :cond_0

    .line 730
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 733
    .end local v0    # "type":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/mediatek/wifi/WifiConfigControllerExt;->isWFATestSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    if-le p1, v4, :cond_0

    .line 735
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public restrictIpv4View(Landroid/net/wifi/WifiConfiguration;)V
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 574
    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v10, 0x7f1302eb

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 575
    .local v6, "ipAddressView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v10, 0x7f1302ec

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 576
    .local v5, "gatewayView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    .line 577
    const v10, 0x7f1302ed

    .line 576
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 578
    .local v7, "networkPrefixLengthView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v10, 0x7f1302ee

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 579
    .local v0, "dns1View":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v10, 0x7f1302ef

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 581
    .local v1, "dns2View":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v8

    .line 582
    .local v8, "staticConfig":Landroid/net/StaticIpConfiguration;
    const-string/jumbo v9, "WifiConfigControllerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "staticConfig = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-eqz v8, :cond_4

    .line 584
    const-string/jumbo v9, "WifiConfigControllerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IpAddressView = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v9, :cond_0

    .line 586
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v9}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet4Address;

    .line 585
    if-eqz v9, :cond_0

    .line 588
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v9}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    .line 587
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v9}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v9

    .line 589
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :cond_0
    const-string/jumbo v9, "WifiConfigControllerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "gatewayView = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v9, :cond_1

    .line 596
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    instance-of v9, v9, Ljava/net/Inet4Address;

    .line 595
    if-eqz v9, :cond_1

    .line 597
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :cond_1
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 602
    .local v2, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 603
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 604
    .local v3, "dsn1":Ljava/net/InetAddress;
    const-string/jumbo v9, "WifiConfigControllerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "dsn1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    instance-of v9, v3, Ljava/net/Inet4Address;

    if-eqz v9, :cond_2

    .line 606
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    .end local v3    # "dsn1":Ljava/net/InetAddress;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 611
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 612
    .local v4, "dsn2":Ljava/net/InetAddress;
    const-string/jumbo v9, "WifiConfigControllerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "dsn2 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    instance-of v9, v4, Ljava/net/Inet4Address;

    if-eqz v9, :cond_3

    .line 614
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    .end local v2    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v4    # "dsn2":Ljava/net/InetAddress;
    :cond_4
    return-void
.end method

.method public setConfig(Landroid/net/wifi/WifiConfiguration;ILandroid/widget/TextView;Landroid/widget/Spinner;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "accessPointSecurity"    # I
    .param p3, "passwordView"    # Landroid/widget/TextView;
    .param p4, "eapMethodSpinner"    # Landroid/widget/Spinner;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    .line 169
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-interface {v2, v3}, Lcom/mediatek/settings/ext/IWifiExt;->getPriority(I)I

    move-result v2

    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 171
    packed-switch p2, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 173
    :pswitch_0
    const-string/jumbo v2, "-1"

    invoke-static {v2}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 174
    const-string/jumbo v3, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(String) eapMethodSpinner.getSelectedItem()="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 182
    .local v0, "eapMethod":I
    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/WifiConfigControllerExt;->getEapMethod(I)I

    move-result v0

    .line 183
    const-string/jumbo v2, "WifiConfigControllerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setConfig, eapMethod= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-eq v5, v0, :cond_1

    if-ne v7, v0, :cond_2

    .line 188
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p4}, Lcom/mediatek/wifi/WifiConfigControllerExt;->eapSimAkaSimSlotConfig(Landroid/net/wifi/WifiConfiguration;Landroid/widget/Spinner;)V

    .line 189
    const-string/jumbo v2, "WifiConfigControllerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eap-sim/aka, config.toString(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 190
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_2
    const/4 v2, 0x6

    if-eq v2, v0, :cond_1

    .line 186
    const/4 v2, 0x7

    if-eq v2, v0, :cond_1

    const/16 v2, 0x8

    if-eq v2, v0, :cond_1

    const/16 v2, 0x9

    if-ne v2, v0, :cond_0

    goto :goto_1

    .line 196
    .end local v0    # "eapMethod":I
    :pswitch_1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 197
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 198
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 199
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 200
    invoke-virtual {p3}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "password":Ljava/lang/String;
    const-string/jumbo v2, "WifiConfigControllerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getConfig(), mHex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mHex:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-boolean v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mHex:Z

    if-eqz v2, :cond_3

    .line 204
    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 206
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 212
    .end local v1    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 213
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 214
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 215
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 216
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 217
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, ""

    .line 216
    :goto_2
    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateWapiAlias(Ljava/lang/String;)V

    .line 219
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 220
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, ""

    .line 219
    :goto_3
    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateWapiAlias(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_4
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    .line 221
    :cond_5
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    .line 171
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setEapMethodFields(Z)V
    .locals 5
    .param p1, "edit"    # Z

    .prologue
    .line 316
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v3, 0x7f1302c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 319
    .local v1, "eapMethodSpinner":Landroid/widget/Spinner;
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 321
    .local v0, "eapMethod":I
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 324
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v3

    .line 325
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v4

    .line 322
    invoke-interface {v2, v0, v3, v4}, Lcom/mediatek/settings/ext/IWifiExt;->getEapMethodbySpinnerPos(ILjava/lang/String;I)I

    move-result v0

    .line 327
    :cond_0
    const-string/jumbo v2, "WifiConfigControllerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showSecurityFields modify method = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    new-instance v3, Lcom/mediatek/settings/ext/IWifiExt$Builder;

    invoke-direct {v3}, Lcom/mediatek/settings/ext/IWifiExt$Builder;-><init>()V

    .line 331
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v4

    .line 330
    invoke-virtual {v3, v4}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setAccessPoint(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v3

    .line 333
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    .line 330
    invoke-virtual {v3, v4}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setViews(Landroid/view/View;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v3

    .line 333
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 330
    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/IWifiExt;->hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V

    .line 315
    return-void
.end method

.method public setEapMethodSelection(Landroid/widget/Spinner;I)V
    .locals 4
    .param p1, "eapMethodSpinner"    # Landroid/widget/Spinner;
    .param p2, "eapMethod"    # I

    .prologue
    .line 552
    move v0, p2

    .line 553
    .local v0, "eapMethodPos":I
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 555
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v2

    .line 556
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v3

    .line 554
    invoke-interface {v1, p2, v2, v3}, Lcom/mediatek/settings/ext/IWifiExt;->getPosByEapMethod(ILjava/lang/String;I)I

    move-result v0

    .line 558
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 559
    const-string/jumbo v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[skyfyx]showSecurityFields modify pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string/jumbo v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[skyfyx]showSecurityFields modify method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void
.end method

.method public setEapmethodSpinnerAdapter()V
    .locals 9

    .prologue
    .line 293
    iget-object v6, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v7, 0x7f1302c8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 296
    .local v3, "eapMethodSpinner":Landroid/widget/Spinner;
    const v5, 0x7f0a0061

    .line 298
    .local v5, "spinnerId":I
    iget-object v6, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 299
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "eapString":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 301
    .local v2, "eapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 302
    const v6, 0x1090008

    .line 301
    invoke-direct {v0, v1, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 303
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 304
    iget-object v6, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 306
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v7

    .line 307
    iget-object v8, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v8}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v8

    .line 304
    invoke-interface {v6, v0, v7, v8}, Lcom/mediatek/settings/ext/IWifiExt;->setEapMethodArray(Landroid/widget/ArrayAdapter;Ljava/lang/String;I)V

    .line 309
    :cond_0
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 311
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 292
    return-void
.end method

.method public setHex(Z)V
    .locals 0
    .param p1, "hexEnabled"    # Z

    .prologue
    .line 536
    iput-boolean p1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mHex:Z

    .line 535
    return-void
.end method

.method public setHexCheckBoxListener()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f1302c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 482
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    .line 481
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 479
    return-void
.end method

.method public setProxyText(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 569
    const v1, 0x7f1302e4

    .line 568
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 570
    .local v0, "proxyText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v1, v0}, Lcom/mediatek/settings/ext/IWifiExt;->setProxyText(Landroid/widget/TextView;)V

    .line 566
    return-void
.end method

.method public setWapiCertSpinnerInvisible(I)V
    .locals 2
    .param p1, "accessPointSecurity"    # I

    .prologue
    .line 470
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f1302d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    :cond_0
    return-void
.end method

.method public showSecurityFields(IZ)Z
    .locals 9
    .param p1, "accessPointSecurity"    # I
    .param p2, "edit"    # Z

    .prologue
    const/4 v8, 0x3

    const v7, 0x7f1302c5

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 406
    const-string/jumbo v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSecurityFields, accessPointSecurity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string/jumbo v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSecurityFields, edit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-eq p1, v8, :cond_0

    .line 411
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v2, 0x7f1302c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 412
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v2, 0x7f1302b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 414
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v2, 0x7f1302c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v2, 0x7f1302c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 420
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mHex:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 426
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 427
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v2, 0x7f1302bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v2, 0x7f1302d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v2, 0x7f1302d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    .line 431
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v2, 0x7f1302d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    .line 432
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 433
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 434
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    const-string/jumbo v2, "WAPISERVERCERT_"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/wifi/WifiConfigControllerExt;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    const-string/jumbo v2, "WAPIUSERCERT_"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/wifi/WifiConfigControllerExt;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 438
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    .line 437
    if-eqz v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPointConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 440
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    const-string/jumbo v2, "WAPISERVERCERT_"

    .line 441
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateWapiAlias()Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    .line 443
    const-string/jumbo v2, "WAPIUSERCERT_"

    .line 444
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateWapiAlias()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return v6

    .line 450
    :cond_3
    if-ne p1, v8, :cond_4

    .line 451
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v2, 0x7f1302c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 455
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setHexCheckBoxListener()V

    .line 458
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    new-instance v2, Lcom/mediatek/settings/ext/IWifiExt$Builder;

    invoke-direct {v2}, Lcom/mediatek/settings/ext/IWifiExt$Builder;-><init>()V

    .line 459
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    .line 458
    invoke-virtual {v2, v3}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setAccessPoint(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v2

    .line 461
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    .line 458
    invoke-virtual {v2, v3}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setViews(Landroid/view/View;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v2

    .line 461
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 458
    invoke-interface {v1, v2, v3}, Lcom/mediatek/settings/ext/IWifiExt;->hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V

    .line 463
    return v4
.end method
