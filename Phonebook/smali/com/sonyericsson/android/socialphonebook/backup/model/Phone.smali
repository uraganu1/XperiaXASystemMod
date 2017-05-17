.class public Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->mNumber:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->mType:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->mNumber:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->mType:Ljava/lang/String;

    .line 62
    return-void
.end method
