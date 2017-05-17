.class public Lcom/sonymobile/conversations/transaction/TransactionBundle;
.super Ljava/lang/Object;
.source "TransactionBundle.java"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "transactionType"    # I

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    .line 95
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "transactionType"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/transaction/TransactionBundle;-><init>(I)V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    .line 118
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMmscUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "mmsc-url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "proxy-address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPort()I
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "proxy-port"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPushData()[B
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "mms-push-data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionId()I
    .locals 4

    .prologue
    .line 159
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "phone_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "subscriptionId":I
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 164
    :cond_0
    return v0
.end method

.method public getTransactionType()I
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSubscriptionId(I)V
    .locals 2
    .param p1, "subscriptionId"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "phone_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    return-void
.end method
