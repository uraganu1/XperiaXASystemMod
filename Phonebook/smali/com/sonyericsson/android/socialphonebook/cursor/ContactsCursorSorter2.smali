.class public Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;
.super Ljava/lang/Object;
.source "ContactsCursorSorter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2$ContactsCursor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactIdColumn:I

.field private final mContext:Landroid/content/Context;

.field private mHeaderOn:Z

.field private mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

.field private mInitialPosition:I

.field private mPhoneticNameColumn:I

.field private mSortColumn:I

.field private mSortedByPhonetic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactIdColumn"    # I
    .param p3, "sortColumn"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mContext:Landroid/content/Context;

    .line 59
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mContactIdColumn:I

    .line 60
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mSortColumn:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mSortedByPhonetic:Z

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mPhoneticNameColumn:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactIdColumn"    # I
    .param p3, "sortColumn"    # I
    .param p4, "sortByPhonetic"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mContext:Landroid/content/Context;

    .line 68
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mContactIdColumn:I

    .line 70
    iput-boolean p4, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mSortedByPhonetic:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mPhoneticNameColumn:I

    .line 66
    return-void
.end method


# virtual methods
.method public final getSortedCursor(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mHeaderOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mInitialPosition:I

    .line 100
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->sort(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2$ContactsCursor;

    return-object v0

    .line 101
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setContactIdColumn(I)V
    .locals 0
    .param p1, "columnIndex"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mContactIdColumn:I

    .line 78
    return-void
.end method

.method public setHeaderOn(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mHeaderOn:Z

    .line 90
    return-void
.end method

.method public setInitialPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mInitialPosition:I

    .line 74
    return-void
.end method

.method public setSortByPhonetic(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mSortedByPhonetic:Z

    .line 86
    return-void
.end method

.method public setSortColumn(I)V
    .locals 0
    .param p1, "columnIndex"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mSortColumn:I

    .line 82
    return-void
.end method

.method protected final sort(Landroid/database/Cursor;II)Landroid/database/Cursor;
    .locals 20
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "mode"    # I
    .param p3, "initialPosition"    # I

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    const/16 v16, 0x0

    return-object v16

    .line 119
    :cond_0
    const-wide/16 v12, 0x0

    .line 120
    .local v12, "time":J
    sget-boolean v16, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v16, :cond_1

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 124
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;>;"
    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 127
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 128
    const/4 v6, 0x0

    .line 130
    .local v6, "index":I
    :goto_0
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;

    invoke-direct {v3}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;-><init>()V

    .line 131
    .local v3, "e":Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->setPosition(I)V

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mContactIdColumn:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 135
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mContactIdColumn:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->setId(J)V

    .line 139
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mSortColumn:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->setDisplayName(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mSortedByPhonetic:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mPhoneticNameColumn:I

    move/from16 v16, v0

    if-ltz v16, :cond_2

    .line 141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mPhoneticNameColumn:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->setPhoneticName(Ljava/lang/String;)V

    .line 143
    :cond_2
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_4

    move v6, v7

    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto :goto_0

    .line 137
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_3
    const-wide/high16 v16, -0x8000000000000000L

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->setId(J)V

    goto :goto_1

    .line 147
    .end local v3    # "e":Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;
    .end local v7    # "index":I
    :cond_4
    sget-boolean v16, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v16, :cond_5

    .line 148
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "create: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v12

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mSortedByPhonetic:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mPhoneticNameColumn:I

    move/from16 v16, v0

    if-gez v16, :cond_6

    .line 152
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;-><init>(Landroid/content/Context;)V

    .line 153
    .local v4, "getter":Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;
    invoke-virtual {v4, v9}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;->getPhoneticName(Ljava/util/List;)V

    .line 156
    .end local v4    # "getter":Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;
    :cond_6
    const-wide/16 v14, 0x0

    .line 157
    .local v14, "time1":J
    sget-boolean v16, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v16, :cond_7

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 161
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    move-object/from16 v16, v0

    if-nez v16, :cond_8

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 164
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 165
    .local v2, "builder":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v9, v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->buildIndexer(Ljava/util/ArrayList;II)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v8

    .line 166
    .local v8, "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 167
    .local v11, "size":I
    new-array v10, v11, [I

    .line 169
    .local v10, "positionMap":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v11, :cond_9

    .line 170
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;

    .line 171
    .restart local v3    # "e":Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;
    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->getPosition()I

    move-result v16

    aput v16, v10, v5

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 174
    .end local v3    # "e":Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;
    :cond_9
    sget-boolean v16, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v16, :cond_a

    .line 175
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sort: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sort total: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v12

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_a
    new-instance v16, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2$ContactsCursor;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v8}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2$ContactsCursor;-><init>(Landroid/database/Cursor;[ILcom/sonyericsson/android/socialphonebook/cursor/Indexer;)V

    return-object v16
.end method
