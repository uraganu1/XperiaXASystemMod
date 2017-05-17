.class public final Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
.super Ljava/lang/Object;
.source "CallLogDetailActionEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;
    }
.end annotation


# instance fields
.field public callText:Ljava/lang/String;

.field public enabled:Z

.field public iconBitmap:Landroid/graphics/Bitmap;

.field public iconId:I

.field public intent:Landroid/content/Intent;

.field public label:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public textId:I

.field public type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

.field public useCallerIdName:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->callText:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->label:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->number:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconId:I

    .line 34
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->textId:I

    .line 36
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->text:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->enabled:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->useCallerIdName:Z

    .line 44
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->OTHER:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .line 46
    return-void
.end method
