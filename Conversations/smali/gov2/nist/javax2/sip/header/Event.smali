.class public Lgov2/nist/javax2/sip/header/Event;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "Event.java"

# interfaces
.implements Ljavax2/sip/header/EventHeader;


# static fields
.field private static final serialVersionUID:J = -0x59a0cd7ede813719L


# instance fields
.field protected eventType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Event"

    .line 57
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Event;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 114
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Event;->eventType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Event;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :goto_1
    return-object p1

    .line 114
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Event;->eventType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ";"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Event;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 101
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Event;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Event;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public match(Lgov2/nist/javax2/sip/header/Event;)Z
    .locals 3
    .param p1, "matchTarget"    # Lgov2/nist/javax2/sip/header/Event;

    .prologue
    const/4 v0, 0x0

    .line 129
    iget-object v1, p1, Lgov2/nist/javax2/sip/header/Event;->eventType:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 131
    :cond_0
    iget-object v1, p1, Lgov2/nist/javax2/sip/header/Event;->eventType:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 133
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Event;->eventType:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 135
    :cond_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 137
    :cond_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 138
    :cond_4
    iget-object v1, p1, Lgov2/nist/javax2/sip/header/Event;->eventType:Ljava/lang/String;

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/Event;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_0
    return v0

    .line 129
    :cond_5
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Event;->eventType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 130
    return v0

    .line 131
    :cond_6
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Event;->eventType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 132
    return v0

    .line 133
    :cond_7
    iget-object v1, p1, Lgov2/nist/javax2/sip/header/Event;->eventType:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 134
    return v0

    .line 135
    :cond_8
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 136
    return v0

    .line 137
    :cond_9
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    return v0

    .line 138
    :cond_a
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_c

    :cond_b
    const/4 v0, 0x1

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/header/Event;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0
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
    .line 69
    if-eqz p1, :cond_0

    .line 70
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Event;->eventType:Ljava/lang/String;

    .line 71
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, " the eventType is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
