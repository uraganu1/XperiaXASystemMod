.class public Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
.super Ljava/lang/Object;
.source "CompositeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation


# instance fields
.field count:I

.field cursor:Landroid/database/Cursor;

.field hasHeader:Z

.field idColumnIndex:I

.field showIfEmpty:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    .line 52
    iput-boolean p2, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->hasHeader:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getHasHeader()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->hasHeader:Z

    return v0
.end method

.method public getShowIfEmpty()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    return v0
.end method
