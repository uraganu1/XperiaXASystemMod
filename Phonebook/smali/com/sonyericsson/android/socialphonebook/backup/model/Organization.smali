.class public Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;
.super Ljava/lang/Object;
.source "Organization.java"


# instance fields
.field private mOrganization:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrganization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->mOrganization:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->mOrganization:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 0
    .param p1, "organization"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->mOrganization:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->mTitle:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->mType:Ljava/lang/String;

    .line 50
    return-void
.end method
