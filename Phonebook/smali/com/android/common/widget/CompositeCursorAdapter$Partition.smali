.class public Lcom/android/common/widget/CompositeCursorAdapter$Partition;
.super Ljava/lang/Object;
.source "CompositeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/widget/CompositeCursorAdapter;
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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    .line 44
    iput-boolean p2, p0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    .line 42
    return-void
.end method


# virtual methods
.method public getHasHeader()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    return v0
.end method

.method public getShowIfEmpty()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 59
    iget v1, p0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
