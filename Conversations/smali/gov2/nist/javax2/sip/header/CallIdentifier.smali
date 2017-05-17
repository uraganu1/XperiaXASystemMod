.class public final Lgov2/nist/javax2/sip/header/CallIdentifier;
.super Lgov2/nist/javax2/sip/header/SIPObject;
.source "CallIdentifier.java"


# static fields
.field private static final serialVersionUID:J = 0x65834be26eebb7f1L


# instance fields
.field protected host:Ljava/lang/String;

.field protected localId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/SIPObject;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/SIPObject;-><init>()V

    .line 83
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/CallIdentifier;->setCallID(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/CallIdentifier;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 96
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-object p1

    :cond_0
    const-string/jumbo v0, "@"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 114
    check-cast v0, Lgov2/nist/javax2/sip/header/CallIdentifier;

    .line 115
    .local v0, "that":Lgov2/nist/javax2/sip/header/CallIdentifier;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    iget-object v2, v0, Lgov2/nist/javax2/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 118
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    iget-object v2, v0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eq v1, v2, :cond_4

    .line 119
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v1, :cond_5

    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 121
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    iget-object v2, v0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 124
    return v4

    .line 110
    .end local v0    # "that":Lgov2/nist/javax2/sip/header/CallIdentifier;
    :cond_1
    return v3

    .line 112
    :cond_2
    return v3

    .line 116
    .restart local v0    # "that":Lgov2/nist/javax2/sip/header/CallIdentifier;
    :cond_3
    return v3

    .line 118
    :cond_4
    return v4

    .line 119
    :cond_5
    iget-object v1, v0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 120
    :cond_6
    return v3

    .line 119
    :cond_7
    iget-object v1, v0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_0

    .line 122
    :cond_8
    return v3
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Hash code called before id is set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallID(Ljava/lang/String;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 170
    if-eqz p1, :cond_1

    const/16 v1, 0x40

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    .line 172
    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    .line 177
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "CallID  must be token@token or token"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    .end local v0    # "index":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "NULL!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    .restart local v0    # "index":I
    :cond_2
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    .line 174
    iput-object v2, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_3
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0
.end method
