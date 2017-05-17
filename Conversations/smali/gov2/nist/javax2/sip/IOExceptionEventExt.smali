.class public Lgov2/nist/javax2/sip/IOExceptionEventExt;
.super Ljavax2/sip/IOExceptionEvent;
.source "IOExceptionEventExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;
    }
.end annotation


# instance fields
.field private final myHost:Ljava/lang/String;

.field private final myPort:I

.field private reason:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "reason"    # Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;
    .param p3, "myHost"    # Ljava/lang/String;
    .param p4, "myPort"    # I
    .param p5, "peerHost"    # Ljava/lang/String;
    .param p6, "peerPort"    # I
    .param p7, "transport"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1, p5, p6, p7}, Ljavax2/sip/IOExceptionEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lgov2/nist/javax2/sip/IOExceptionEventExt;->reason:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    .line 20
    iput-object p3, p0, Lgov2/nist/javax2/sip/IOExceptionEventExt;->myHost:Ljava/lang/String;

    .line 21
    iput p4, p0, Lgov2/nist/javax2/sip/IOExceptionEventExt;->myPort:I

    .line 22
    iput-object p2, p0, Lgov2/nist/javax2/sip/IOExceptionEventExt;->reason:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    .line 23
    return-void
.end method


# virtual methods
.method public getReason()Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lgov2/nist/javax2/sip/IOExceptionEventExt;->reason:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IOExceptionEvent{myHost=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/IOExceptionEventExt;->myHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", myPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgov2/nist/javax2/sip/IOExceptionEventExt;->myPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", peerHost=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/IOExceptionEventExt;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", peerPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/IOExceptionEventExt;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", transport=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/IOExceptionEventExt;->getTransport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
