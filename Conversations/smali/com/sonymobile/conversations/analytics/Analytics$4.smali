.class final Lcom/sonymobile/conversations/analytics/Analytics$4;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnComplete1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/conversations/analytics/Analytics;->pushAppView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/forklift/OnComplete1",
        "<",
        "Lcom/sonymobile/gagtmhelper/GaGtmUtils;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val$screenName"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sonymobile/conversations/analytics/Analytics$4;->val$screenName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 1
    .param p1, "gaGtmUtils"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonymobile/conversations/analytics/Analytics$4;->val$screenName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushAppView(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "gaGtmUtils"    # Ljava/lang/Object;

    .prologue
    .line 163
    check-cast p1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .end local p1    # "gaGtmUtils":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/conversations/analytics/Analytics$4;->onComplete(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    return-void
.end method
