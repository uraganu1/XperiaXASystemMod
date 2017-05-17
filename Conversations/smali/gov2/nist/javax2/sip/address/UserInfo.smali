.class public final Lgov2/nist/javax2/sip/address/UserInfo;
.super Lgov2/nist/javax2/sip/address/NetObject;
.source "UserInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x64df3b126d0c8190L


# instance fields
.field protected password:Ljava/lang/String;

.field protected user:Ljava/lang/String;

.field protected userType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lgov2/nist/javax2/sip/address/NetObject;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/address/UserInfo;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 114
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/UserInfo;->password:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/UserInfo;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :goto_0
    return-object p1

    .line 115
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/UserInfo;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/address/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    move-object v0, p1

    .line 88
    check-cast v0, Lgov2/nist/javax2/sip/address/UserInfo;

    .line 89
    .local v0, "other":Lgov2/nist/javax2/sip/address/UserInfo;
    iget v1, p0, Lgov2/nist/javax2/sip/address/UserInfo;->userType:I

    iget v2, v0, Lgov2/nist/javax2/sip/address/UserInfo;->userType:I

    if-ne v1, v2, :cond_3

    .line 92
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/UserInfo;->user:Ljava/lang/String;

    iget-object v2, v0, Lgov2/nist/javax2/sip/address/UserInfo;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/UserInfo;->password:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 97
    :cond_0
    iget-object v1, v0, Lgov2/nist/javax2/sip/address/UserInfo;->password:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 99
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/UserInfo;->password:Ljava/lang/String;

    iget-object v2, v0, Lgov2/nist/javax2/sip/address/UserInfo;->password:Ljava/lang/String;

    if-eq v1, v2, :cond_7

    .line 101
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/UserInfo;->password:Ljava/lang/String;

    iget-object v2, v0, Lgov2/nist/javax2/sip/address/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 86
    .end local v0    # "other":Lgov2/nist/javax2/sip/address/UserInfo;
    :cond_2
    return v3

    .line 90
    .restart local v0    # "other":Lgov2/nist/javax2/sip/address/UserInfo;
    :cond_3
    return v3

    .line 93
    :cond_4
    return v3

    .line 95
    :cond_5
    iget-object v1, v0, Lgov2/nist/javax2/sip/address/UserInfo;->password:Ljava/lang/String;

    if-nez v1, :cond_0

    return v3

    .line 97
    :cond_6
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/UserInfo;->password:Ljava/lang/String;

    if-nez v1, :cond_1

    return v3

    .line 99
    :cond_7
    const/4 v1, 0x1

    return v1
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lgov2/nist/javax2/sip/address/UserInfo;->password:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lgov2/nist/javax2/sip/address/UserInfo;->user:Ljava/lang/String;

    .line 167
    if-nez p1, :cond_0

    :goto_0
    const/4 v0, 0x2

    .line 170
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/address/UserInfo;->setUserType(I)V

    .line 172
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "#"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 168
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/address/UserInfo;->setUserType(I)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ";"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0
.end method

.method public setUserType(I)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 190
    if-ne p1, v0, :cond_1

    .line 193
    :cond_0
    iput p1, p0, Lgov2/nist/javax2/sip/address/UserInfo;->userType:I

    .line 194
    return-void

    :cond_1
    const/4 v0, 0x2

    .line 190
    if-eq p1, v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter not in range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
