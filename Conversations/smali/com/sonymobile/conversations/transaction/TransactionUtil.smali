.class public Lcom/sonymobile/conversations/transaction/TransactionUtil;
.super Ljava/lang/Object;
.source "TransactionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMmscFromContentUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "contentUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "hostUrl":Ljava/net/URL;
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v5

    .line 46
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-direct {v2, v3, v4, v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 47
    .end local v1    # "hostUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Content url is malformed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static shouldParseContentDisposition(I)Z
    .locals 3
    .param p0, "subscriptionId"    # I

    .prologue
    .line 26
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    const-string/jumbo v1, "supportMmsContentDisposition"

    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
