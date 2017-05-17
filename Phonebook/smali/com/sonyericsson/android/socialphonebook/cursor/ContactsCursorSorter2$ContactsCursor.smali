.class public Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2$ContactsCursor;
.super Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;
.source "ContactsCursorSorter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsCursor"
.end annotation


# direct methods
.method constructor <init>(Landroid/database/Cursor;[ILcom/sonyericsson/android/socialphonebook/cursor/Indexer;)V
    .locals 0
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aPositionMap"    # [I
    .param p3, "aIndexer"    # Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;-><init>(Landroid/database/Cursor;[ILcom/sonyericsson/android/socialphonebook/cursor/Indexer;)V

    .line 48
    return-void
.end method
