.class public final Lgov2/nist/javax2/sip/header/AllowEvents;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "AllowEvents.java"

# interfaces
.implements Ljavax2/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = 0x893718ec0c30d9aL


# instance fields
.field protected eventType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Allow-Events"

    .line 58
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/AllowEvents;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/AllowEvents;->eventType:Ljava/lang/String;

    .line 85
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception,AllowEvents, setEventType(), the eventType parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
