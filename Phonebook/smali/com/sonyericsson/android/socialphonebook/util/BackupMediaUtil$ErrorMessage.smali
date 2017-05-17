.class public Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;
.super Ljava/lang/Object;
.source "BackupMediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorMessage"
.end annotation


# instance fields
.field private mBody:I

.field private mTitle:I


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V
    .locals 0
    .param p1, "body"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->setMessageBodyId(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;I)V
    .locals 0
    .param p1, "title"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->setMessageTitleId(I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;-><init>()V

    return-void
.end method

.method private setMessageBodyId(I)V
    .locals 0
    .param p1, "body"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->mBody:I

    .line 88
    return-void
.end method

.method private setMessageTitleId(I)V
    .locals 0
    .param p1, "title"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->mTitle:I

    .line 84
    return-void
.end method


# virtual methods
.method public getMessageBodyId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->mBody:I

    return v0
.end method

.method public getMessageTitleId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->mTitle:I

    return v0
.end method
