.class public Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$ServiceWorkData;
.super Ljava/lang/Object;
.source "SIMServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceWorkData"
.end annotation


# instance fields
.field public mSimCursor:Landroid/database/Cursor;

.field public mSimType:I

.field public mSubId:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$ServiceWorkData;->mSubId:J

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$ServiceWorkData;->mSimType:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$ServiceWorkData;->mSimCursor:Landroid/database/Cursor;

    .line 53
    return-void
.end method

.method constructor <init>(JILandroid/database/Cursor;)V
    .locals 3
    .param p1, "subId"    # J
    .param p3, "simType"    # I
    .param p4, "simCursor"    # Landroid/database/Cursor;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$ServiceWorkData;->mSubId:J

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$ServiceWorkData;->mSimType:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$ServiceWorkData;->mSimCursor:Landroid/database/Cursor;

    .line 57
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$ServiceWorkData;->mSubId:J

    .line 58
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$ServiceWorkData;->mSimType:I

    .line 59
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$ServiceWorkData;->mSimCursor:Landroid/database/Cursor;

    .line 56
    return-void
.end method
