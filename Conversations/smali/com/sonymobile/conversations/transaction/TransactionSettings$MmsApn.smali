.class public Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
.super Ljava/lang/Object;
.source "TransactionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/conversations/transaction/TransactionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmsApn"
.end annotation


# instance fields
.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mServiceCenter:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->mProxyPort:I

    .line 79
    return-void
.end method

.method public static createApn(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .locals 1
    .param p0, "serviceCenter"    # Ljava/lang/String;
    .param p1, "proxyAddress"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I

    .prologue
    .line 82
    new-instance v0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;

    invoke-direct {v0}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;-><init>()V

    .line 83
    .local v0, "mmsApn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    iput-object p0, v0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->mServiceCenter:Ljava/lang/String;

    .line 84
    iput-object p1, v0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->mProxyAddress:Ljava/lang/String;

    .line 85
    iput p2, v0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->mProxyPort:I

    .line 86
    return-object v0
.end method


# virtual methods
.method public getProxyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->mProxyPort:I

    return v0
.end method

.method public getServiceCenter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->mServiceCenter:Ljava/lang/String;

    return-object v0
.end method

.method public isMmscSet()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->mServiceCenter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProxySet()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->mProxyAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->isMmscSet()Z

    move-result v0

    .line 96
    .local v0, "mmscOk":Z
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->isProxySet()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->mProxyPort:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 97
    .local v1, "proxyOk":Z
    :goto_0
    if-eqz v0, :cond_2

    .end local v1    # "proxyOk":Z
    :goto_1
    return v1

    .line 96
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "proxyOk":Z
    goto :goto_0

    .line 97
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
