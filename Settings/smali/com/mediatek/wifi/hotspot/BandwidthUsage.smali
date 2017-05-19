.class public Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.super Landroid/app/Fragment;
.source "BandwidthUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;,
        Lcom/mediatek/wifi/hotspot/BandwidthUsage$1;,
        Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;,
        Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;,
        Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;,
        Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;
    }
.end annotation


# static fields
.field private static final EVENT_TICK:I = 0x1

.field private static final GB_IN_BYTES:J = 0x40000000L

.field private static final IFACE:Ljava/lang/String; = "ap0"

.field private static final KB_IN_BYTES:J = 0x400L

.field private static final LIMIT_MAX_SIZE:I = 0xa

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final NETWORK_INFO:Ljava/lang/String; = "network_info"

.field private static final NETWORK_LIMIT:Ljava/lang/String; = "network_limit"

.field private static final TAG:Ljava/lang/String; = "BandwidthUsage"

.field private static final TAG_LIMIT_EDITOR:Ljava/lang/String; = "limitEditor"


# instance fields
.field private mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

.field private mChartListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mEnableThrottling:Landroid/widget/CheckBox;

.field private mEnableThrottlingView:Landroid/view/View;

.field private mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mOnEnableCheckBoxClick:Landroid/view/View$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartTime:J

.field private mTotalDataView:Landroid/view/View;

.field private mTotalTimeView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/animation/LayoutTransition;
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/wifi/hotspot/BandwidthUsage;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setLimitData(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/wifi/hotspot/BandwidthUsage;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setThrottleEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->updateBandwidthUsage()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    .line 85
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$1;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 235
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChartListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    .line 251
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mOnEnableCheckBoxClick:Landroid/view/View$OnClickListener;

    .line 61
    return-void
.end method

.method private buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 311
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 313
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 314
    return-object v0
.end method

.method private inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 321
    const v2, 0x7f0400a0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    .line 322
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 324
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    return-object v0
.end method

.method private refreshTimeAndData()V
    .locals 10

    .prologue
    .line 344
    const-wide/16 v4, 0x0

    .line 346
    .local v4, "usedTime":J
    iget-wide v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    sub-long v4, v6, v8

    .line 350
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 352
    const-string/jumbo v7, "wifi_hotspot_start_time"

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 351
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    .line 355
    const-wide/16 v4, 0x0

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    long-to-double v8, v4

    const/4 v7, 0x1

    invoke-static {v6, v8, v9, v7}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "time":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0b007c

    invoke-direct {p0, v6, v8, v7}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setPreferenceTitle(Landroid/view/View;ILjava/lang/String;)V

    .line 362
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v6}, Lcom/mediatek/widget/ChartBandwidthUsageView;->getTotalUsedData()J

    move-result-wide v2

    .line 364
    .local v2, "totalData":J
    const-wide/32 v6, 0x100000

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 365
    const-wide/16 v6, 0x400

    div-long/2addr v2, v6

    .line 366
    const-string/jumbo v1, " KB"

    .line 374
    .local v1, "unit":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    .line 375
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0b007d

    .line 374
    invoke-direct {p0, v6, v8, v7}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setPreferenceTitle(Landroid/view/View;ILjava/lang/String;)V

    .line 342
    return-void

    .line 367
    .end local v1    # "unit":Ljava/lang/String;
    :cond_2
    const-wide/32 v6, 0x40000000

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    .line 368
    const-wide/32 v6, 0x100000

    div-long/2addr v2, v6

    .line 369
    const-string/jumbo v1, " M"

    .restart local v1    # "unit":Ljava/lang/String;
    goto :goto_0

    .line 371
    .end local v1    # "unit":Ljava/lang/String;
    :cond_3
    const-wide/32 v6, 0x40000000

    div-long/2addr v2, v6

    .line 372
    const-string/jumbo v1, " G"

    .restart local v1    # "unit":Ljava/lang/String;
    goto :goto_0
.end method

.method private setLimitData(Z)V
    .locals 12
    .param p1, "enable"    # Z

    .prologue
    .line 278
    :try_start_0
    const-string/jumbo v8, "ap0"

    invoke-static {v8}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 279
    .local v3, "ni":Ljava/net/NetworkInterface;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 289
    if-eqz p1, :cond_4

    .line 290
    :try_start_1
    iget-object v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v8}, Lcom/mediatek/widget/ChartBandwidthUsageView;->getLimitBytes()J

    move-result-wide v4

    .line 291
    .local v4, "limit":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_2

    const/4 v6, 0x1

    .line 292
    .local v6, "rxBytes":I
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_3

    const/4 v7, 0x1

    .line 293
    .local v7, "txBytes":I
    :goto_1
    const-string/jumbo v8, "@M_BandwidthUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setLimitData,setInterfaceThrottle,rxBytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 294
    const-string/jumbo v10, ",txBytes="

    .line 293
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string/jumbo v9, "ap0"

    invoke-interface {v8, v9, v6, v7}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 298
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "network_info"

    .line 299
    const/4 v10, 0x2

    .line 298
    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 300
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v8, "network_limit"

    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-nez v9, :cond_0

    const-wide/16 v4, 0x1

    .end local v4    # "limit":J
    :cond_0
    invoke-interface {v2, v8, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 276
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "rxBytes":I
    .end local v7    # "txBytes":I
    :goto_2
    return-void

    .line 280
    :cond_1
    :try_start_2
    const-string/jumbo v8, "@M_BandwidthUsage"

    const-string/jumbo v9, "Network interface has been removed, setLimitData() return"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    return-void

    .line 283
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/net/SocketException;
    const-string/jumbo v8, "@M_BandwidthUsage"

    const-string/jumbo v9, "SocketException happens when getNetworkInterface return"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 291
    .end local v1    # "e":Ljava/net/SocketException;
    .restart local v3    # "ni":Ljava/net/NetworkInterface;
    .restart local v4    # "limit":J
    :cond_2
    const-wide/16 v8, 0x8

    mul-long/2addr v8, v4

    const-wide/16 v10, 0x2

    mul-long/2addr v8, v10

    long-to-int v8, v8

    :try_start_3
    div-int/lit16 v6, v8, 0xc00

    .restart local v6    # "rxBytes":I
    goto :goto_0

    .line 292
    :cond_3
    const-wide/16 v8, 0x8

    mul-long/2addr v8, v4

    long-to-int v8, v8

    div-int/lit16 v7, v8, 0xc00

    .restart local v7    # "txBytes":I
    goto :goto_1

    .line 303
    .end local v4    # "limit":J
    .end local v6    # "rxBytes":I
    .end local v7    # "txBytes":I
    :cond_4
    iget-object v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string/jumbo v9, "ap0"

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-interface {v8, v9, v10, v11}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 305
    :catch_1
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "@M_BandwidthUsage"

    const-string/jumbo v9, " RemoteException happens when setInterfaceRxThrottle"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    .line 332
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 333
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 331
    return-void
.end method

.method private setPreferenceTitle(Landroid/view/View;ILjava/lang/String;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "resId"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v2, p2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "text":Ljava/lang/String;
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 339
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    return-void
.end method

.method private setThrottleEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 450
    const-string/jumbo v1, "@M_BandwidthUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setThrottleEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 452
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 453
    const-string/jumbo v2, "interface_throttle_enable"

    .line 452
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 449
    return-void

    .line 451
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private updateBandwidthUsage()V
    .locals 4

    .prologue
    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v1

    .line 380
    .local v1, "networkStats":Landroid/net/NetworkStats;
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v2, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setNetworkStates(Landroid/net/NetworkStats;)V

    .line 381
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->refreshTimeAndData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v1    # "networkStats":Landroid/net/NetworkStats;
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "@M_BandwidthUsage"

    const-string/jumbo v3, "RemoteException happens"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 125
    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mConnManager:Landroid/net/IConnectivityManager;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mIntentFilter:Landroid/content/IntentFilter;

    .line 127
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0400a0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 132
    const-string/jumbo v5, "@M_BandwidthUsage"

    const-string/jumbo v6, "onCreateView"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    .local v0, "context":Landroid/content/Context;
    const v5, 0x7f040151

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 137
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f1302a8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 138
    .local v2, "enableLayout":Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    .line 139
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 140
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 141
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-direct {p0, p1, v2, v5}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    .line 142
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    .line 143
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 144
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mOnEnableCheckBoxClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    const v6, 0x7f0b0077

    invoke-direct {p0, v5, v6}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setPreferenceTitle(Landroid/view/View;I)V

    .line 148
    const v5, 0x7f13007d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mediatek/widget/ChartBandwidthUsageView;

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    .line 149
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChartListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    invoke-virtual {v5, v6}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setListener(Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;)V

    .line 151
    const v5, 0x7f1302a9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 152
    .local v3, "timeLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p1, v9, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    .line 153
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 154
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 155
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    const v5, 0x7f1300eb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 158
    .local v1, "dataLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p1, v9, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    .line 159
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 160
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 161
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    return-object v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 213
    const-string/jumbo v0, "@M_BandwidthUsage"

    const-string/jumbo v1, "onDestory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 215
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 212
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    .line 207
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 201
    const-string/jumbo v0, "@M_BandwidthUsage"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 203
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 168
    const-string/jumbo v3, "@M_BandwidthUsage"

    const-string/jumbo v6, "onResume"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 172
    const-string/jumbo v6, "airplane_mode_on"

    .line 171
    invoke-static {v3, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 173
    .local v1, "isAirplaneMode":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 179
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 180
    const-string/jumbo v6, "interface_throttle_enable"

    .line 179
    invoke-static {v3, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v9, :cond_2

    const/4 v0, 0x1

    .line 181
    .local v0, "enable":Z
    :goto_1
    const-string/jumbo v3, "@M_BandwidthUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResume,getInterfaceRxThrottle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v3, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitState(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v6, "network_info"

    invoke-virtual {v3, v6, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 187
    .local v2, "pre":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "network_limit"

    invoke-interface {v2, v3, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 188
    .local v4, "value":J
    const-string/jumbo v3, "@M_BandwidthUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "init limit value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitBytes(J)V

    .line 190
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/mediatek/widget/ChartBandwidthUsageView;->updateVertAxisBounds(Lcom/mediatek/widget/ChartSweepView;)V

    .line 192
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 193
    const-string/jumbo v6, "wifi_hotspot_start_time"

    .line 192
    invoke-static {v3, v6, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    .line 195
    const-string/jumbo v3, "@M_BandwidthUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mStartTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->refreshTimeAndData()V

    .line 167
    return-void

    .line 171
    .end local v0    # "enable":Z
    .end local v1    # "isAirplaneMode":Z
    .end local v2    # "pre":Landroid/content/SharedPreferences;
    .end local v4    # "value":J
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isAirplaneMode":Z
    goto/16 :goto_0

    .line 179
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto/16 :goto_1
.end method