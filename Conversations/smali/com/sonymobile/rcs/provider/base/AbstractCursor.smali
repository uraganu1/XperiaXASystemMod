.class public abstract Lcom/sonymobile/rcs/provider/base/AbstractCursor;
.super Landroid/database/CursorWrapper;
.source "AbstractCursor.java"


# instance fields
.field private mColumnIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->mColumnIndexes:Ljava/util/HashMap;

    .line 33
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "colName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 78
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 79
    return-object v1

    :cond_1
    const/4 v1, 0x1

    .line 80
    goto :goto_0
.end method

.method protected getCachedColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 2
    .param p1, "colName"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->mColumnIndexes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 41
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 45
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->mColumnIndexes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "colName"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 85
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 86
    return-object v1
.end method

.method public getIntegerOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "colName"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 51
    return-object v1
.end method

.method public getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p1, "colName"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 57
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 58
    return-object v1
.end method
