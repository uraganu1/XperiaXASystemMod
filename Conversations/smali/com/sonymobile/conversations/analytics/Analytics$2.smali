.class final Lcom/sonymobile/conversations/analytics/Analytics$2;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/conversations/analytics/Analytics;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerLoaded(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    const-string/jumbo v0, "GA container successfully loaded."

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string/jumbo v0, "GA container failed to load!"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
