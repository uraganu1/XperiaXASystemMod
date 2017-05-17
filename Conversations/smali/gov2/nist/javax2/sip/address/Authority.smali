.class public Lgov2/nist/javax2/sip/address/Authority;
.super Lgov2/nist/javax2/sip/address/NetObject;
.source "Authority.java"


# static fields
.field private static final serialVersionUID:J = -0x318c6e34baa9fca6L


# instance fields
.field protected hostPort:Lgov2/nist/core/HostPort;

.field protected userInfo:Lgov2/nist/javax2/sip/address/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lgov2/nist/javax2/sip/address/NetObject;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lgov2/nist/javax2/sip/address/NetObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/address/Authority;

    .line 235
    .local v0, "retval":Lgov2/nist/javax2/sip/address/Authority;
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    if-nez v1, :cond_0

    .line 236
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    if-nez v1, :cond_1

    .line 237
    :goto_1
    return-object v0

    .line 235
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    invoke-virtual {v1}, Lgov2/nist/core/HostPort;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/core/HostPort;

    iput-object v1, v0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    goto :goto_0

    .line 236
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/UserInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/address/UserInfo;

    iput-object v1, v0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    goto :goto_1
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 64
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov2/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 71
    :goto_0
    return-object p1

    .line 65
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/UserInfo;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "@"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov2/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 82
    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    move-object v0, p1

    .line 86
    check-cast v0, Lgov2/nist/javax2/sip/address/Authority;

    .line 87
    .local v0, "otherAuth":Lgov2/nist/javax2/sip/address/Authority;
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    iget-object v2, v0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    invoke-virtual {v1, v2}, Lgov2/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    if-nez v1, :cond_4

    .line 95
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 82
    .end local v0    # "otherAuth":Lgov2/nist/javax2/sip/address/Authority;
    :cond_1
    return v3

    .line 84
    :cond_2
    return v3

    .line 88
    .restart local v0    # "otherAuth":Lgov2/nist/javax2/sip/address/Authority;
    :cond_3
    return v3

    .line 90
    :cond_4
    iget-object v1, v0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    iget-object v2, v0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/address/UserInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    return v3
.end method

.method public getHost()Lgov2/nist/core/Host;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    invoke-virtual {v0}, Lgov2/nist/core/HostPort;->getHost()Lgov2/nist/core/Host;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    return-object v1
.end method

.method public getHostPort()Lgov2/nist/core/HostPort;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    iget-object v0, v0, Lgov2/nist/javax2/sip/address/UserInfo;->password:Ljava/lang/String;

    return-object v0

    .line 123
    :cond_0
    return-object v1
.end method

.method public getUser()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    iget-object v0, v0, Lgov2/nist/javax2/sip/address/UserInfo;->user:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    invoke-virtual {v0}, Lgov2/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Null hostPort cannot compute hashcode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHost(Lgov2/nist/core/Host;)V
    .locals 1
    .param p1, "host"    # Lgov2/nist/core/Host;

    .prologue
    .line 194
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov2/nist/core/HostPort;->setHost(Lgov2/nist/core/Host;)V

    .line 196
    return-void

    .line 194
    :cond_0
    new-instance v0, Lgov2/nist/core/HostPort;

    invoke-direct {v0}, Lgov2/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    goto :goto_0
.end method

.method public setHostPort(Lgov2/nist/core/HostPort;)V
    .locals 0
    .param p1, "h"    # Lgov2/nist/core/HostPort;

    .prologue
    .line 214
    iput-object p1, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    .line 215
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "passwd"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/UserInfo;->setPassword(Ljava/lang/String;)V

    .line 176
    return-void

    .line 174
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/address/UserInfo;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/UserInfo;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    goto :goto_0
.end method

.method public setPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov2/nist/core/HostPort;->setPort(I)V

    .line 206
    return-void

    .line 204
    :cond_0
    new-instance v0, Lgov2/nist/core/HostPort;

    invoke-direct {v0}, Lgov2/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->hostPort:Lgov2/nist/core/HostPort;

    goto :goto_0
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/UserInfo;->setUser(Ljava/lang/String;)V

    .line 186
    return-void

    .line 184
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/address/UserInfo;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/UserInfo;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/Authority;->userInfo:Lgov2/nist/javax2/sip/address/UserInfo;

    goto :goto_0
.end method
