.class public Lcom/mediatek/wifi/WifiWpsP2pEmSettings;
.super Ljava/lang/Object;
.source "WifiWpsP2pEmSettings.java"


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mContext:Landroid/content/Context;

.field private mIsOnlyVisibilityWpsPin:Z

.field private mIsWifiP2pEmOpen:Z

.field private mIsWifiWpsEmOpen:Z

.field private mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiWpsEmDialog:Landroid/app/AlertDialog;

.field private mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

.field private mWpsOrP2p:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)Lcom/mediatek/wifi/AccessPoint;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;ILcom/mediatek/wifi/AccessPoint;Z)V
    .locals 0
    .param p1, "dialogId"    # I
    .param p2, "accessPoint"    # Lcom/mediatek/wifi/AccessPoint;
    .param p3, "isOnlyVisibilityWpsPin"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->showWifiWpsEmDialog(ILcom/mediatek/wifi/AccessPoint;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/net/wifi/p2p/WifiP2pManager;
    .param p3, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, "@M_WifiWpsP2pEmSettings"

    const-string/jumbo v1, "WifiWpsP2pEmSettings, WifiP2pManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    .line 60
    iput-object p2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 61
    iput-object p3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 56
    return-void
.end method

.method private createDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    const/4 v2, 0x0

    .line 304
    iget v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiWpsEmOpen:Z

    if-eqz v0, :cond_0

    .line 306
    packed-switch p1, :pswitch_data_0

    .line 331
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 308
    :pswitch_0
    new-instance v0, Lcom/mediatek/wifi/WifiWpsEmDialog;

    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsOnlyVisibilityWpsPin:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/wifi/WifiWpsEmDialog;-><init>(Landroid/content/Context;Lcom/mediatek/wifi/AccessPoint;Z)V

    return-object v0

    .line 310
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    const v1, 0x7f0b008b

    .line 310
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 314
    new-instance v1, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$9;

    invoke-direct {v1, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$9;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    .line 313
    const v2, 0x7f0b0155

    .line 310
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$10;

    invoke-direct {v1, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$10;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    .line 320
    const v2, 0x7f0b0156

    .line 310
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showWifiWpsEmDialog(ILcom/mediatek/wifi/AccessPoint;Z)V
    .locals 2
    .param p1, "dialogId"    # I
    .param p2, "accessPoint"    # Lcom/mediatek/wifi/AccessPoint;
    .param p3, "isOnlyVisibilityWpsPin"    # Z

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiWpsEmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->removeDialog(I)V

    .line 289
    iput-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiWpsEmDialog:Landroid/app/AlertDialog;

    .line 293
    :cond_0
    iput-object p2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mSelectedAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    .line 294
    iput-boolean p3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsOnlyVisibilityWpsPin:Z

    .line 297
    invoke-direct {p0, p1}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiWpsEmDialog:Landroid/app/AlertDialog;

    .line 298
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiWpsEmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiWpsEmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 286
    :cond_1
    return-void
.end method


# virtual methods
.method public createOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    iget v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiWpsEmOpen:Z

    if-eqz v1, :cond_1

    .line 86
    const v1, 0x7f0b008d

    invoke-interface {p1, v1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 87
    .local v0, "nfc":Landroid/view/SubMenu;
    const/16 v1, 0xd

    const v2, 0x7f0b0083

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 89
    const/16 v1, 0xe

    const v2, 0x7f0b0084

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 83
    .end local v0    # "nfc":Landroid/view/SubMenu;
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-ne v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiP2pEmOpen:Z

    if-eqz v1, :cond_0

    .line 93
    const v1, 0x7f0b008e

    invoke-interface {p1, v1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 94
    .restart local v0    # "nfc":Landroid/view/SubMenu;
    const/4 v1, 0x3

    const v2, 0x7f0b0092

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 96
    const/4 v1, 0x4

    const v2, 0x7f0b008f

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 98
    const/4 v1, 0x5

    const v2, 0x7f0b0090

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 100
    const/4 v1, 0x6

    const v2, 0x7f0b0093

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 102
    const/4 v1, 0x7

    const v2, 0x7f0b0091

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public handleP2pStateChanged()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "autonomous_go"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    return-void
.end method

.method public optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 118
    iget v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiWpsEmOpen:Z

    if-eqz v1, :cond_1

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return v2

    .line 122
    :pswitch_0
    const/4 v1, 0x4

    invoke-direct {p0, v1, v4, v3}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->showWifiWpsEmDialog(ILcom/mediatek/wifi/AccessPoint;Z)V

    .line 123
    return v3

    .line 125
    :pswitch_1
    const-string/jumbo v1, "@M_WifiWpsP2pEmSettings"

    const-string/jumbo v4, "click menu item: WPS Register PBC"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v1, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$1;

    invoke-direct {v1, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$1;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    iput-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    .line 135
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 136
    .local v0, "config":Landroid/net/wifi/WpsInfo;
    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 137
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->startWpsExternalRegistrar(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 138
    return v3

    .line 142
    .end local v0    # "config":Landroid/net/wifi/WpsInfo;
    :cond_1
    iget v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-ne v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiP2pEmOpen:Z

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 146
    :pswitch_2
    const-string/jumbo v1, "WifiWpsP2pEmSettings"

    const-string/jumbo v2, "onOptionsItemSelected, MENU_ID_WPS_TAG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 149
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 150
    new-instance v4, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$2;

    invoke-direct {v4, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$2;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    .line 149
    const v5, 0x22065

    invoke-virtual {v1, v2, v5, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->generateNfcToken(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 156
    return v3

    .line 158
    :pswitch_3
    const-string/jumbo v1, "WifiWpsP2pEmSettings"

    const-string/jumbo v2, "onOptionsItemSelected, MENU_ID_P2P_TAG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 161
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 162
    new-instance v4, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$3;

    invoke-direct {v4, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$3;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    .line 161
    const v5, 0x22062

    invoke-virtual {v1, v2, v5, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->generateNfcToken(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 169
    return v3

    .line 171
    :pswitch_4
    const-string/jumbo v1, "WifiWpsP2pEmSettings"

    const-string/jumbo v2, "onOptionsItemSelected, MENU_ID_OOB_DEVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 174
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 175
    new-instance v4, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$4;

    invoke-direct {v4, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$4;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    .line 174
    const v5, 0x2205f

    invoke-virtual {v1, v2, v5, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->generateNfcToken(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 182
    return v3

    .line 184
    :pswitch_5
    const-string/jumbo v1, "WifiWpsP2pEmSettings"

    const-string/jumbo v2, "onOptionsItemSelected, MENU_ID_AUTO_GO_DEVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 187
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 188
    new-instance v4, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$5;

    invoke-direct {v4, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$5;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    .line 187
    const v5, 0x22068

    invoke-virtual {v1, v2, v5, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->generateNfcToken(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 195
    return v3

    .line 197
    :pswitch_6
    const-string/jumbo v1, "WifiWpsP2pEmSettings"

    const-string/jumbo v4, "onOptionsItemSelected, MENU_ID_AUTO_GO"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string/jumbo v1, "WifiWpsP2pEmSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MENU_ID_AUTO_GO isChecked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 200
    const-string/jumbo v1, "WifiWpsP2pEmSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MENU_ID_AUTO_GO isChecked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "autonomous_go"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 206
    new-instance v4, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$6;

    invoke-direct {v4, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$6;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    .line 205
    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 226
    :cond_2
    :goto_2
    return v3

    :cond_3
    move v1, v3

    .line 199
    goto :goto_1

    .line 214
    :cond_4
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "autonomous_go"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 218
    new-instance v4, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$7;

    invoke-direct {v4, p0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$7;-><init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V

    .line 217
    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_2

    .line 119
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 143
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public prepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    iget v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-ne v3, v1, :cond_0

    iget-boolean v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiP2pEmOpen:Z

    if-eqz v3, :cond_0

    .line 111
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 112
    .local v0, "autoGoMenu":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 113
    const-string/jumbo v4, "autonomous_go"

    .line 112
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 108
    .end local v0    # "autoGoMenu":Landroid/view/MenuItem;
    :cond_0
    return-void

    .restart local v0    # "autoGoMenu":Landroid/view/MenuItem;
    :cond_1
    move v1, v2

    .line 112
    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    iget v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-nez v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 75
    const-string/jumbo v3, "wps_em_wifi_enable"

    .line 74
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiWpsEmOpen:Z

    .line 71
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    iget v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mWpsOrP2p:I

    if-ne v2, v0, :cond_0

    .line 78
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 79
    const-string/jumbo v3, "wps_em_p2p_enable"

    .line 78
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->mIsWifiP2pEmOpen:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
