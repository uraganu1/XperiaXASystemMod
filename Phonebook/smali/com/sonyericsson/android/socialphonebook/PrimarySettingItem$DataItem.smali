.class public final Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
.super Ljava/lang/Object;
.source "PrimarySettingItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataItem"
.end annotation


# instance fields
.field public mContactName:Ljava/lang/String;

.field public mId:J

.field public mIsSuperPrimary:J

.field public mLabel:Ljava/lang/String;

.field public mMime:Ljava/lang/String;

.field public mPrimaryData:Ljava/lang/String;

.field public mRawContactId:J

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mId:J

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mIsSuperPrimary:J

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mType:I

    .line 22
    iput-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mRawContactId:J

    .line 15
    return-void
.end method
