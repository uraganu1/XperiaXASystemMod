.class final Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;
.super Ljava/lang/Object;
.source "CastTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CastDetailAdapter"
.end annotation


# instance fields
.field private mDetailView:Landroid/widget/LinearLayout;

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mSinkViewEnabledBak:Z

.field private final mVisibleOrder:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mWfdSinkView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateDeviceName(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Ljava/util/Set;)V
    .locals 0
    .param p1, "devices"    # Ljava/util/Set;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateItems(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateSinkView()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Landroid/hardware/display/WifiDisplayStatus;Z)V
    .locals 0
    .param p1, "status"    # Landroid/hardware/display/WifiDisplayStatus;
    .param p2, "sinkMode"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->wfdStatusChanged(Landroid/hardware/display/WifiDisplayStatus;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CastTile;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mSinkViewEnabledBak:Z

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CastTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    return-void
.end method

.method private handleWfdStateChanged(IZ)V
    .locals 2
    .param p1, "wfdState"    # I
    .param p2, "sinkMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 400
    packed-switch p1, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 402
    :pswitch_0
    if-nez p2, :cond_0

    .line 403
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->setSinkViewEnabled(Z)V

    .line 404
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->setSinkViewChecked(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->updateWfdFloatMenu(Z)V

    goto :goto_0

    .line 409
    :pswitch_1
    if-nez p2, :cond_0

    .line 410
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->setSinkViewEnabled(Z)V

    goto :goto_0

    .line 414
    :pswitch_2
    if-nez p2, :cond_0

    .line 415
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->setSinkViewEnabled(Z)V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 461
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 462
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 463
    check-cast v1, Landroid/view/ViewGroup;

    .line 464
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 465
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 464
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 460
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setSinkViewChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 472
    return-void

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get1(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSinkViewChecked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    .line 476
    const v2, 0x1020001

    .line 475
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 477
    .local v0, "swi":Landroid/widget/Switch;
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 470
    return-void
.end method

.method private setSinkViewEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 452
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mSinkViewEnabledBak:Z

    .line 453
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 454
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->-get1(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSinkViewEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 451
    return-void
.end method

.method private setSinkViewVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 437
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 438
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->-get1(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSinkViewVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    if-eqz p1, :cond_2

    .line 442
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/CastController;->getWifiP2pDev()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateDeviceName(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDeviceName(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 424
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get1(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDeviceName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    .line 427
    const v2, 0x1020016

    .line 426
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 428
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 431
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateItems(Ljava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/statusbar/policy/CastController$CastDevice;>;"
    const/4 v11, 0x1

    .line 328
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get1(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "update items: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v8, :cond_0

    return-void

    .line 330
    :cond_0
    const/4 v7, 0x0

    .line 331
    .local v7, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 366
    .end local v7    # "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v8, v7}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 327
    return-void

    .line 333
    .restart local v7    # "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 334
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget v8, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 335
    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v6}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 336
    .local v6, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    const v8, 0x7f020071

    iput v8, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 337
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8, v0}, Lcom/android/systemui/qs/tiles/CastTile;->-wrap0(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 338
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get3(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090186

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 339
    iput-object v0, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 340
    iput-boolean v11, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 341
    new-array v7, v11, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .end local v7    # "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    const/4 v8, 0x0

    aput-object v6, v7, v8

    .line 346
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    .end local v6    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_4
    if-nez v7, :cond_1

    .line 347
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 348
    .restart local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->id:Ljava/lang/String;

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 350
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_5
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v8

    new-array v7, v8, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 351
    .local v7, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    const/4 v2, 0x0

    .line 352
    .local v2, "i":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "id$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 353
    .local v4, "id":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 354
    .restart local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 355
    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v6}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 356
    .restart local v6    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    const v8, 0x7f020070

    iput v8, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 357
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8, v0}, Lcom/android/systemui/qs/tiles/CastTile;->-wrap0(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 358
    iget v8, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-ne v8, v11, :cond_7

    .line 359
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get3(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090187

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 361
    :cond_7
    iput-object v0, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 362
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v6, v7, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method

.method private updateSinkView()V
    .locals 3

    .prologue
    .line 481
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 482
    return-void

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get1(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "updateSinkView summary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    .line 486
    const v2, 0x1020010

    .line 485
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 487
    .local v0, "summary":Landroid/widget/TextView;
    new-instance v1, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 480
    return-void
.end method

.method private wfdStatusChanged(Landroid/hardware/display/WifiDisplayStatus;Z)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/display/WifiDisplayStatus;
    .param p2, "sinkMode"    # Z

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/CastController;->isNeedShowWfdSink()Z

    move-result v0

    .line 394
    .local v0, "show":Z
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->setSinkViewVisible(Z)V

    .line 395
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->handleWfdStateChanged(IZ)V

    .line 392
    return-void

    .line 396
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 231
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/CastController;->isWfdSinkSupported()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 232
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p1, v8, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 237
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v9, "Cast"

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 238
    if-nez p2, :cond_0

    .line 239
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get1(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "addOnAttachStateChangeListener"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v9, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/QSDetailItems;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 253
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v9, 0x7f02006f

    .line 254
    const v10, 0x7f09017f

    .line 253
    invoke-virtual {v8, v9, v10}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    .line 255
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v8, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 256
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateItems(Ljava/util/Set;)V

    .line 257
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/android/systemui/statusbar/policy/CastController;->setDiscovering(Z)V

    .line 259
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/CastController;->isWfdSinkSupported()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 260
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get1(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "add WFD sink view: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    if-nez v8, :cond_1

    .line 262
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 264
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04002d

    const/4 v9, 0x0

    .line 263
    invoke-virtual {v3, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    .line 265
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    .line 266
    const v9, 0x1020018

    .line 265
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 267
    .local v7, "widgetFrame":Landroid/view/ViewGroup;
    const v8, 0x7f04002e

    invoke-virtual {v3, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 268
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    .line 269
    const v9, 0x1020006

    .line 268
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 270
    .local v6, "view":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 271
    const v9, 0x1120058

    .line 270
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 272
    const v8, 0x7f020102

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    .line 277
    const v9, 0x1020010

    .line 276
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 278
    .local v5, "summary":Landroid/widget/TextView;
    const v8, 0x7f090059

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 279
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    new-instance v9, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v5    # "summary":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/widget/ImageView;
    .end local v7    # "widgetFrame":Landroid/view/ViewGroup;
    :cond_1
    instance-of v8, p2, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_6

    .line 292
    check-cast p2, Landroid/widget/LinearLayout;

    .end local p2    # "convertView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mDetailView:Landroid/widget/LinearLayout;

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateSinkView()V

    .line 315
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/CastController;->getWifiP2pDev()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateDeviceName(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 316
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/CastController;->isNeedShowWfdSink()Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->setSinkViewVisible(Z)V

    .line 317
    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mSinkViewEnabledBak:Z

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->setSinkViewEnabled(Z)V

    .line 319
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mDetailView:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_8

    .line 320
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mDetailView:Landroid/widget/LinearLayout;

    return-object v8

    .line 234
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    goto/16 :goto_0

    .line 260
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 274
    .restart local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v6    # "view":Landroid/widget/ImageView;
    .restart local v7    # "widgetFrame":Landroid/view/ViewGroup;
    :cond_5
    const v8, 0x7f020103

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 295
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v6    # "view":Landroid/widget/ImageView;
    .end local v7    # "widgetFrame":Landroid/view/ViewGroup;
    :cond_6
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mDetailView:Landroid/widget/LinearLayout;

    .line 296
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mDetailView:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 297
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mDetailView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mWfdSinkView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 298
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 299
    .local v0, "devider":Landroid/view/View;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 300
    const v9, 0x7f0a003d

    .line 299
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 301
    .local v1, "dh":I
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 303
    const v9, 0x7f0b0010

    .line 302
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 304
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mDetailView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 305
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mDetailView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v9, 0x7f1000da

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/QSDetailItems;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 307
    .local v4, "spacer":Landroid/view/View;
    if-eqz v4, :cond_7

    .line 308
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 309
    .local v2, "height":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mDetailView:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 310
    const/4 v10, -0x1

    .line 309
    invoke-direct {v9, v10, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 312
    .end local v2    # "height":I
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/CastTile;->-get1(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "get min_height_spacer fail"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 322
    .end local v0    # "devider":Landroid/view/View;
    .end local v1    # "dh":I
    .end local v4    # "spacer":Landroid/view/View;
    .end local p2    # "convertView":Landroid/view/View;
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v8
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 225
    const/16 v0, 0x97

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/android/systemui/qs/tiles/CastTile;->-get0()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 205
    const v0, 0x7f09017b

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 4
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 371
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get3(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x9d

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 373
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 374
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get1(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDetailItemClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/CastController;->startCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V

    .line 377
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CastController;->updateWfdFloatMenu(Z)V

    .line 370
    return-void
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 4
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 382
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get3(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x9e

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 384
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 385
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get1(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDetailItemDisconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/CastController;->stopCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V

    .line 388
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->-get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CastController;->updateWfdFloatMenu(Z)V

    .line 381
    return-void
.end method

.method public setToggleState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 219
    return-void
.end method
