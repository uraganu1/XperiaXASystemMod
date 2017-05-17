.class public Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;
.super Landroid/database/CursorWrapper;
.source "FilterCursor.java"


# static fields
.field private static final FIRST_ELEMENT_POSITION:I = 0x0

.field private static final STARTING_CURSOR_POSITION:I = -0x1


# instance fields
.field private mFilter:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteringColumnName:Ljava/lang/String;

.field private mPos:I

.field private mValidRowPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWrappedCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/google/common/base/Predicate;Ljava/lang/String;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p3, "filteringColumnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 35
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    .line 39
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    const-string/jumbo v0, "None of constructor arguments should be null, nor should column name be an empty string."

    .line 43
    .local v0, "errMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mWrappedCursor:Landroid/database/Cursor;

    .line 47
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mFilter:Lcom/google/common/base/Predicate;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mValidRowPositions:Ljava/util/List;

    .line 49
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->extractFilteringColumnName(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->extractValidRowPositions()V

    .line 52
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mWrappedCursor:Landroid/database/Cursor;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 37
    return-void
.end method

.method private extractFilteringColumnName(Ljava/lang/String;)V
    .locals 2
    .param p1, "filteringColumnName"    # Ljava/lang/String;

    .prologue
    .line 164
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 165
    .local v0, "periodIndex":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 166
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mFilteringColumnName:Ljava/lang/String;

    .line 163
    :goto_0
    return-void

    .line 168
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mFilteringColumnName:Ljava/lang/String;

    goto :goto_0
.end method

.method private extractValidRowPositions()V
    .locals 6

    .prologue
    .line 143
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mWrappedCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mFilteringColumnName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 145
    .local v1, "numberColumnIndex":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mWrappedCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mWrappedCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mFilter:Lcom/google/common/base/Predicate;

    invoke-interface {v4, v3}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    .line 148
    .local v2, "shouldBeFilteredOut":Z
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mWrappedCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 150
    .local v0, "currentPosition":I
    if-nez v2, :cond_0

    .line 151
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mValidRowPositions:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0    # "currentPosition":I
    .end local v2    # "shouldBeFilteredOut":Z
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mValidRowPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilteredCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mWrappedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    return v0
.end method

.method public isAfterLast()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 72
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mValidRowPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    return v0

    .line 75
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mValidRowPositions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mValidRowPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    return v0

    .line 83
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    const/4 v2, -0x1

    if-gt v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 88
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mValidRowPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 114
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mValidRowPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 98
    if-gt p1, v1, :cond_0

    .line 99
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    .line 100
    return v2

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mValidRowPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mValidRowPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    .line 104
    return v2

    .line 107
    :cond_1
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mValidRowPositions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 109
    .local v0, "positionInWrappedCursor":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mWrappedCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    return v1
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
