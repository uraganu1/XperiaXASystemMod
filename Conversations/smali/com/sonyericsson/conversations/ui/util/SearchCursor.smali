.class public Lcom/sonyericsson/conversations/ui/util/SearchCursor;
.super Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;
.source "SearchCursor.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;Ljava/lang/String;)V
    .locals 0
    .param p1, "firstCursor"    # Landroid/database/Cursor;
    .param p2, "secondCursor"    # Landroid/database/Cursor;
    .param p3, "sorter"    # Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;
    .param p4, "searchString"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;)V

    .line 12
    return-void
.end method
