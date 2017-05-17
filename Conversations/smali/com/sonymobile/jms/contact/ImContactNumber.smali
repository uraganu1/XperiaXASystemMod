.class public Lcom/sonymobile/jms/contact/ImContactNumber;
.super Ljava/lang/Object;
.source "ImContactNumber.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6a64dd2e36546d92L


# instance fields
.field private final mNormalizedNumber:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "normalizedNumber"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/jms/contact/ImContactNumber;->mNormalizedNumber:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;
    .locals 3
    .param p0, "validUriOrNumber"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Lcom/sonymobile/jms/ImApiHolder;->getApis()Lcom/sonymobile/jms/ImApis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/jms/ImApis;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v0

    .line 67
    .local v0, "imContactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p0}, Lcom/sonymobile/jms/contact/ImContactApi;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    return-object v1

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ImContactApi does not exist (stack is not installed?) so ImContactNumber.toString() must not be called!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromStrings([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "numbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v1, "contactNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 87
    return-object v1

    .line 84
    :cond_0
    aget-object v4, v0, v2

    .line 85
    .local v4, "number":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 97
    if-eqz p1, :cond_0

    .line 100
    instance-of v1, p1, Lcom/sonymobile/jms/contact/ImContactNumber;

    if-nez v1, :cond_1

    .line 104
    return v2

    .line 98
    :cond_0
    return v2

    :cond_1
    move-object v0, p1

    .line 101
    check-cast v0, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 102
    .local v0, "otherContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    iget-object v1, p0, Lcom/sonymobile/jms/contact/ImContactNumber;->mNormalizedNumber:Ljava/lang/String;

    iget-object v2, v0, Lcom/sonymobile/jms/contact/ImContactNumber;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/jms/contact/ImContactNumber;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/jms/contact/ImContactNumber;->mNormalizedNumber:Ljava/lang/String;

    return-object v0
.end method
