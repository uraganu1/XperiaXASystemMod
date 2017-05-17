.class public Lcom/sonymobile/rcs/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static NETWORK_ACCESS_2G:I

.field public static NETWORK_ACCESS_3G:I

.field public static NETWORK_ACCESS_3GPLUS:I

.field public static NETWORK_ACCESS_4G:I

.field public static NETWORK_ACCESS_UNKNOWN:I

.field public static NETWORK_ACCESS_WIFI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 38
    sput v0, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_UNKNOWN:I

    const/4 v0, 0x0

    .line 43
    sput v0, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_2G:I

    const/4 v0, 0x1

    .line 48
    sput v0, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_3G:I

    const/4 v0, 0x2

    .line 53
    sput v0, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_3GPLUS:I

    const/4 v0, 0x3

    .line 58
    sput v0, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_WIFI:I

    const/4 v0, 0x4

    .line 63
    sput v0, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_4G:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkAccessType()I
    .locals 8

    .prologue
    .line 71
    sget v3, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_UNKNOWN:I

    .line 73
    .local v3, "result":I
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 75
    .local v0, "connectivityMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 76
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 110
    .end local v0    # "connectivityMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 77
    .restart local v0    # "connectivityMgr":Landroid/net/ConnectivityManager;
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    .line 78
    if-eq v5, v6, :cond_2

    .line 80
    if-nez v5, :cond_0

    .line 81
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    .line 82
    .local v4, "subtype":I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_1
    sget v3, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_2G:I

    goto :goto_0

    .line 79
    .end local v4    # "subtype":I
    :cond_2
    sget v3, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_WIFI:I

    goto :goto_0

    .line 91
    .restart local v4    # "subtype":I
    :pswitch_2
    sget v3, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_3G:I

    goto :goto_0

    .line 97
    :pswitch_3
    sget v3, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_3GPLUS:I

    goto :goto_0

    .line 101
    :pswitch_4
    sget v3, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_4G:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v0    # "connectivityMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "subtype":I
    .end local v5    # "type":I
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static imsAndNetworkConnected()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->isImsConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_0
    return v1

    .line 131
    :cond_1
    return v1
.end method

.method private static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    if-eqz p0, :cond_1

    const-string/jumbo v4, "connectivity"

    .line 118
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 120
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 121
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_2

    :goto_0
    move v2, v3

    :cond_0
    return v2

    .line 116
    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_1
    return v2

    .line 121
    .restart local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    .restart local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0
.end method
