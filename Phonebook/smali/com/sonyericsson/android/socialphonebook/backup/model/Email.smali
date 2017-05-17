.class public Lcom/sonyericsson/android/socialphonebook/backup/model/Email;
.super Ljava/lang/Object;
.source "Email.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->mAddress:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->mType:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->mAddress:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->mType:Ljava/lang/String;

    .line 61
    return-void
.end method
