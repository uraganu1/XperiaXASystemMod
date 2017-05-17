.class public Lcom/sonyericsson/android/socialphonebook/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "aAccountType"    # Ljava/lang/String;
    .param p2, "aAccountName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/AccountInfo;->mAccountType:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/AccountInfo;->mAccountName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AccountInfo;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AccountInfo;->mAccountType:Ljava/lang/String;

    return-object v0
.end method
