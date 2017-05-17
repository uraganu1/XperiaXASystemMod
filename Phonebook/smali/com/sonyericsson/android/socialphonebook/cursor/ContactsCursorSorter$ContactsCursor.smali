.class public Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsCursor;
.super Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;
.source "ContactsCursorSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsCursor"
.end annotation


# direct methods
.method constructor <init>(Landroid/database/Cursor;[I)V
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aPositionMap"    # [I

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;-><init>(Landroid/database/Cursor;[IZ)V

    .line 57
    return-void
.end method
