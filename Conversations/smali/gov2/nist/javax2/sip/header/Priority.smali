.class public Lgov2/nist/javax2/sip/header/Priority;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "Priority.java"

# interfaces
.implements Ljavax2/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = 0x3541b15bf9044cbaL


# instance fields
.field protected priority:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Priority"

    .line 78
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Priority;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 2
    .param p1, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 108
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Priority;->priority:Ljava/lang/String;

    .line 109
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception,Priority, setPriority(), the priority parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
