.class public Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;
.super Ljava/lang/Object;
.source "Tuple.java"


# instance fields
.field private contactList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private service:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

.field private status:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->id:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->status:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    .line 29
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->service:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->contactList:Ljava/util/Vector;

    const-wide/16 v0, -0x1

    .line 33
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->timestamp:J

    .line 36
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->id:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public addContact(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;)V
    .locals 1
    .param p1, "contact"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->contactList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public getService()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->service:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    return-object v0
.end method

.method public getStatus()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->status:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->timestamp:J

    return-wide v0
.end method

.method public setService(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;)V
    .locals 0
    .param p1, "service"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->service:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    .line 69
    return-void
.end method

.method public setStatus(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->status:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    .line 61
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "ts"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->timestamp:J

    .line 77
    return-void
.end method
