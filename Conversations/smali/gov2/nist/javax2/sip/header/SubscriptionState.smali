.class public Lgov2/nist/javax2/sip/header/SubscriptionState;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "SubscriptionState.java"

# interfaces
.implements Ljavax2/sip/header/SubscriptionStateHeader;


# static fields
.field private static final serialVersionUID:J = -0x5c9e37cd95983a79L


# instance fields
.field protected expires:I

.field protected reasonCode:Ljava/lang/String;

.field protected retryAfter:I

.field protected state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const-string/jumbo v0, "Subscription-State"

    .line 60
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 61
    iput v1, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->expires:I

    .line 62
    iput v1, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->retryAfter:I

    .line 63
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/SubscriptionState;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v2, -0x1

    .line 174
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->state:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 175
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 176
    :goto_1
    iget v0, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->expires:I

    if-ne v0, v2, :cond_2

    .line 177
    :goto_2
    iget v0, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->retryAfter:I

    if-ne v0, v2, :cond_3

    .line 179
    :goto_3
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    :goto_4
    return-object p1

    .line 174
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ";reason="

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ";expires="

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->expires:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ";retry-after="

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->retryAfter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    const-string/jumbo v0, ";"

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method public getExpires()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->expires:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setExpires(I)V
    .locals 2
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 73
    if-ltz p1, :cond_0

    .line 76
    iput p1, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->expires:I

    .line 77
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, "JAIN-SIP Exception, SubscriptionState, setExpires(), the expires parameter is  < 0"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReasonCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "reasonCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 138
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    .line 139
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception, SubscriptionState, setReasonCode(), the reasonCode parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRetryAfter(I)V
    .locals 2
    .param p1, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 98
    if-lez p1, :cond_0

    .line 102
    iput p1, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->retryAfter:I

    .line 103
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, "JAIN-SIP Exception, SubscriptionState, setRetryAfter(), the retryAfter parameter is <=0"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setState(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 161
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/SubscriptionState;->state:Ljava/lang/String;

    .line 162
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception, SubscriptionState, setState(), the state parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
