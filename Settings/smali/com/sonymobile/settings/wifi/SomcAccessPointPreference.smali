.class public Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;
.super Lcom/android/settings/wifi/AccessPointPreference;
.source "SomcAccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;
    }
.end annotation


# static fields
.field private static synthetic -android_net_NetworkInfo$DetailedStateSwitchesValues:[I

.field private static volatile lastConnectedSsid:Ljava/lang/String;

.field private static volatile lastConnectedSsidHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

.field private static volatile lastConnectedSsidHighlightedDuration:I

.field private static volatile lastConnectedSsidLastTimestamp:J


# instance fields
.field private mHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;


# direct methods
.method private static synthetic -getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->values()[Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidLastTimestamp:J

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings/wifi/AccessPointPreference$UserBadgeCache;Z)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settings/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "forSavedNetworks"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings/wifi/AccessPointPreference$UserBadgeCache;Z)V

    .line 40
    sget-object v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->DISCONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    iput-object v0, p0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->mHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 50
    invoke-direct {p0}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->restoreState()V

    .line 48
    return-void
.end method

.method private handleConnected()V
    .locals 6

    .prologue
    .line 117
    iget-object v2, p0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->mHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    sget-object v3, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    if-ne v2, v3, :cond_0

    .line 118
    return-void

    .line 121
    :cond_0
    sget-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->JUST_CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    iput-object v2, p0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->mHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 122
    sget-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->JUST_CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    sput-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 125
    .local v0, "timestamp":J
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    sget-wide v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidLastTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsid:Ljava/lang/String;

    .line 128
    const/4 v2, 0x0

    sput v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidHighlightedDuration:I

    .line 129
    sput-wide v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidLastTimestamp:J

    .line 130
    return-void

    .line 133
    :cond_2
    sget v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidHighlightedDuration:I

    int-to-long v2, v2

    .line 134
    sget-wide v4, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidLastTimestamp:J

    sub-long v4, v0, v4

    .line 133
    add-long/2addr v2, v4

    long-to-int v2, v2

    sput v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidHighlightedDuration:I

    .line 135
    sget v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidHighlightedDuration:I

    const/16 v3, 0x2328

    if-lt v2, v3, :cond_3

    .line 136
    sget-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    iput-object v2, p0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->mHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 137
    sget-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    sput-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 114
    :goto_0
    return-void

    .line 139
    :cond_3
    sput-wide v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidLastTimestamp:J

    goto :goto_0
.end method

.method public static resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    sput-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsid:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidHighlightedDuration:I

    .line 67
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidLastTimestamp:J

    .line 68
    sput-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 64
    return-void
.end method

.method private restoreState()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsidHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    iput-object v0, p0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->mHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 54
    return-void
.end method


# virtual methods
.method public getHighlightState()Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->mHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    return-object v0
.end method

.method protected updateHighlight(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 76
    sget-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->BAD_PASSWORD:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    iput-object v2, p0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->mHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 111
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->mHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    invoke-static {p1, v2}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->updateHighlight(Landroid/view/View;Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;)V

    .line 72
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 79
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 81
    .local v1, "networkState":Landroid/net/NetworkInfo$DetailedState;
    invoke-static {}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->-getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 90
    :pswitch_0
    iget-object v2, p0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->mHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    sget-object v3, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->BAD_PASSWORD:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    if-eq v2, v3, :cond_0

    .line 91
    sget-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->DISCONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    iput-object v2, p0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->mHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    goto :goto_0

    .line 98
    :pswitch_1
    sput-object v4, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->lastConnectedSsid:Ljava/lang/String;

    .line 101
    :pswitch_2
    sget-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->CONNECTING:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    iput-object v2, p0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->mHighlightState:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    goto :goto_0

    .line 105
    :pswitch_3
    invoke-direct {p0}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->handleConnected()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
