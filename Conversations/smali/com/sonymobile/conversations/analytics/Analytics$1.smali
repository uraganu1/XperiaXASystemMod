.class final Lcom/sonymobile/conversations/analytics/Analytics$1;
.super Lcom/sonymobile/forklift/HeavyProperty;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/conversations/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/forklift/HeavyProperty",
        "<",
        "Lcom/sonymobile/gagtmhelper/GaGtmUtils;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonymobile/forklift/HeavyProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onBackground()Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/analytics/Analytics;->-wrap0(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/conversations/analytics/Analytics$1;->onBackground()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    return-object v0
.end method
