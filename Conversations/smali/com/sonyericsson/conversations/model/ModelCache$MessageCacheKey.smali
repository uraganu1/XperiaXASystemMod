.class Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageCacheKey"
.end annotation


# instance fields
.field private mMessageKey:Ljava/lang/String;

.field private mMessageThread:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "messageThread"    # J

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageKey:Ljava/lang/String;

    .line 90
    iput-wide p2, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageThread:J

    .line 88
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 95
    instance-of v0, p1, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v0, p1, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageThread:J

    iget-wide v2, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageThread:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 106
    iget-wide v2, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageThread:J

    iget-wide v4, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageThread:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 107
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;->mMessageKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 108
    return v0
.end method
