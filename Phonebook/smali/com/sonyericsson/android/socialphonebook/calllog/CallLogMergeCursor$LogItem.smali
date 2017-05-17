.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
.super Ljava/lang/Object;
.source "CallLogMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogItem"
.end annotation


# instance fields
.field collapseMode:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

.field date:J

.field id:I

.field isRead:I

.field name:Ljava/lang/String;

.field number:Ljava/lang/String;

.field numberLabel:Ljava/lang/String;

.field presentation:I

.field type:I

.field voicemailUri:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->isRead:I

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;-><init>()V

    return-void
.end method
