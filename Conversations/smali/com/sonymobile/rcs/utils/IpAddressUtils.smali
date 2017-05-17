.class public Lcom/sonymobile/rcs/utils/IpAddressUtils;
.super Ljava/lang/Object;
.source "IpAddressUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractHostAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 39
    if-eqz p0, :cond_0

    const-string/jumbo v1, "/"

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, "index":I
    if-ne v0, v2, :cond_1

    :goto_0
    const-string/jumbo v1, "%"

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 57
    if-ne v0, v2, :cond_2

    .line 61
    :goto_1
    return-object p0

    .line 40
    .end local v0    # "index":I
    :cond_0
    return-object v1

    .line 46
    .restart local v0    # "index":I
    :cond_1
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static isIPv6(Ljava/lang/String;)Z
    .locals 4
    .param p0, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, "isIPv6":Z
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 75
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v2, "isIPv6":Z
    return v2

    .line 78
    .end local v0    # "addr":Ljava/net/InetAddress;
    .local v2, "isIPv6":Z
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/net/UnknownHostException;
    const/4 v3, 0x0

    return v3
.end method
