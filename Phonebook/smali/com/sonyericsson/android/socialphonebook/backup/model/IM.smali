.class public Lcom/sonyericsson/android/socialphonebook/backup/model/IM;
.super Ljava/lang/Object;
.source "IM.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->mName:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->mType:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->mProtocol:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->mName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->mProtocol:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->mType:Ljava/lang/String;

    .line 82
    return-void
.end method
