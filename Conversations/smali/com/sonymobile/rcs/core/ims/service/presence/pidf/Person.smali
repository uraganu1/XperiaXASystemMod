.class public Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;
.super Ljava/lang/Object;
.source "Person.java"


# instance fields
.field private homePage:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private note:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

.field private statusIcon:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

.field private timestamp:J

.field private willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->id:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->note:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    .line 26
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    .line 28
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->statusIcon:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    .line 30
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->homePage:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 32
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->timestamp:J

    .line 35
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->id:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getHomePage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->homePage:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->note:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    return-object v0
.end method

.method public getOverridingWillingness()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    return-object v0
.end method

.method public getStatusIcon()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->statusIcon:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->timestamp:J

    return-wide v0
.end method

.method public setHomePage(Ljava/lang/String;)V
    .locals 0
    .param p1, "homePage"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->homePage:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setNote(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;)V
    .locals 0
    .param p1, "note"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->note:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    .line 52
    return-void
.end method

.method public setOverridingWillingness(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;)V
    .locals 0
    .param p1, "status"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    .line 60
    return-void
.end method

.method public setStatusIcon(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;)V
    .locals 0
    .param p1, "statusIcon"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->statusIcon:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    .line 68
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "ts"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->timestamp:J

    .line 84
    return-void
.end method
