.class public final Lcom/sonymobile/network/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/sonymobile/network/NetworkApi;


# instance fields
.field private mAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonymobile/network/NetworkManager;->mAppContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public isNetworkConnected()Z
    .locals 4

    .prologue
    .line 32
    iget-object v2, p0, Lcom/sonymobile/network/NetworkManager;->mAppContext:Landroid/content/Context;

    .line 33
    const-string/jumbo v3, "connectivity"

    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 34
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 35
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
