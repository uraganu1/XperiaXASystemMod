.class public Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;
.super Ljava/lang/Object;
.source "OverridingWillingness.java"


# instance fields
.field private basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

.field private until:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    const-wide/16 v0, -0x1

    .line 27
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->until:J

    .line 34
    return-void
.end method


# virtual methods
.method public getBasic()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    return-object v0
.end method

.method public setBasic(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;)V
    .locals 0
    .param p1, "basic"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    .line 42
    return-void
.end method

.method public setUntilTimestamp(Ljava/lang/String;)V
    .locals 2
    .param p1, "ts"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/DateUtils;->decodeDate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->until:J

    .line 50
    return-void
.end method
