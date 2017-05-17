.class public abstract Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected mCursor:Landroid/database/Cursor;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 54
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;, "Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter<TVH;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 54
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 109
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;, "Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 110
    .local v0, "old":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;, "Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;, "Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;, "Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter<TVH;>;"
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0

    .line 86
    :cond_0
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 94
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;, "Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 99
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method init(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 59
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;, "Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter<TVH;>;"
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 60
    if-eqz p2, :cond_0

    const-string/jumbo v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mRowIDColumn:I

    .line 58
    return-void

    .line 60
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;, "Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter<TVH;>;"
    const/4 v2, 0x0

    .line 126
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 127
    return-object v2

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 130
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 131
    if-eqz p1, :cond_1

    .line 132
    const-string/jumbo v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mRowIDColumn:I

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->notifyDataSetChanged()V

    .line 138
    return-object v0

    .line 134
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->mRowIDColumn:I

    goto :goto_0
.end method
