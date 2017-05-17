.class public Lcom/sonymobile/conversations/proxy/ProxyManager;
.super Ljava/lang/Object;
.source "ProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/conversations/proxy/ProxyManager$ProxyServiceHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager$ProxyServiceHolder;->-get0()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v0

    return-object v0
.end method
