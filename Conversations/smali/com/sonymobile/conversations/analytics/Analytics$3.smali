.class final Lcom/sonymobile/conversations/analytics/Analytics$3;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnComplete1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
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
.field final synthetic val$eventAction:Ljava/lang/String;

.field final synthetic val$eventCategory:Ljava/lang/String;

.field final synthetic val$eventLabel:Ljava/lang/String;

.field final synthetic val$eventValue:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "val$eventCategory"    # Ljava/lang/String;
    .param p2, "val$eventAction"    # Ljava/lang/String;
    .param p3, "val$eventLabel"    # Ljava/lang/String;
    .param p4, "val$eventValue"    # J

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sonymobile/conversations/analytics/Analytics$3;->val$eventCategory:Ljava/lang/String;

    iput-object p2, p0, Lcom/sonymobile/conversations/analytics/Analytics$3;->val$eventAction:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/conversations/analytics/Analytics$3;->val$eventLabel:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sonymobile/conversations/analytics/Analytics$3;->val$eventValue:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 6
    .param p1, "gaGtmUtils"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/sonymobile/conversations/analytics/Analytics$3;->val$eventCategory:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/conversations/analytics/Analytics$3;->val$eventAction:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/conversations/analytics/Analytics$3;->val$eventLabel:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sonymobile/conversations/analytics/Analytics$3;->val$eventValue:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 147
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "gaGtmUtils"    # Ljava/lang/Object;

    .prologue
    .line 147
    check-cast p1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .end local p1    # "gaGtmUtils":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/conversations/analytics/Analytics$3;->onComplete(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    return-void
.end method
