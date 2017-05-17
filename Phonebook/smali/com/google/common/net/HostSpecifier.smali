.class public final Lcom/google/common/net/HostSpecifier;
.super Ljava/lang/Object;
.source "HostSpecifier.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final canonicalForm:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "canonicalForm"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    .locals 4
    .param p0, "specifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/HostSpecifier;->fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 122
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid host specifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 129
    .local v1, "parseException":Ljava/text/ParseException;
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 130
    throw v1
.end method

.method public static fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    .locals 8
    .param p0, "specifier"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v4

    .line 79
    .local v4, "parsedHost":Lcom/google/common/net/HostAndPort;
    invoke-virtual {v4}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    invoke-virtual {v4}, Lcom/google/common/net/HostAndPort;->getHostText()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "host":Ljava/lang/String;
    const/4 v0, 0x0

    .line 88
    .local v0, "addr":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_1
    if-eqz v0, :cond_1

    .line 94
    new-instance v5, Lcom/google/common/net/HostSpecifier;

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->toUriString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/common/net/HostSpecifier;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 79
    .end local v3    # "host":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 89
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v3    # "host":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 100
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-static {v3}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    move-result-object v1

    .line 102
    .local v1, "domain":Lcom/google/common/net/InternetDomainName;
    invoke-virtual {v1}, Lcom/google/common/net/InternetDomainName;->hasPublicSuffix()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    new-instance v5, Lcom/google/common/net/HostSpecifier;

    invoke-virtual {v1}, Lcom/google/common/net/InternetDomainName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/common/net/HostSpecifier;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 106
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Domain name does not have a recognized public suffix: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 2
    .param p0, "specifier"    # Ljava/lang/String;

    .prologue
    .line 141
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/HostSpecifier;->fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v1, 0x1

    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 150
    if-ne p0, p1, :cond_0

    .line 151
    const/4 v1, 0x1

    return v1

    .line 154
    :cond_0
    instance-of v1, p1, Lcom/google/common/net/HostSpecifier;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 155
    check-cast v0, Lcom/google/common/net/HostSpecifier;

    .line 156
    .local v0, "that":Lcom/google/common/net/HostSpecifier;
    iget-object v1, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 159
    .end local v0    # "that":Lcom/google/common/net/HostSpecifier;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    return-object v0
.end method
