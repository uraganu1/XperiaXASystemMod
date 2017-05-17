.class public Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;
.super Ljava/lang/Object;
.source "ContactsCursorSorter.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsCursor;,
        Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsIndexedCursor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsCursorSorter"


# instance fields
.field private final mAlternativeDisplayNameColumn:I

.field private final mContactsIdColumn:I

.field private final mContext:Landroid/content/Context;

.field private final mDisplayNameColumn:I

.field private mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

.field private final mPhoneticNameColumn:I

.field private final mSortedByPhonetic:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aDisplayNameColumn"    # I
    .param p3, "aPhoneticNameColumn"    # I
    .param p4, "aAlternativeDisplayNameColumn"    # I

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 130
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContext:Landroid/content/Context;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContactsIdColumn:I

    .line 132
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mDisplayNameColumn:I

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mSortedByPhonetic:Z

    .line 134
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mPhoneticNameColumn:I

    .line 135
    iput p4, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mAlternativeDisplayNameColumn:I

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aContactsIdColumn"    # I
    .param p3, "aDisplayNameColumn"    # I
    .param p4, "aPhoneticNameColumn"    # I
    .param p5, "aAlternativeDisplayNameColumn"    # I

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 149
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContext:Landroid/content/Context;

    .line 150
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContactsIdColumn:I

    .line 151
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mDisplayNameColumn:I

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mSortedByPhonetic:Z

    .line 153
    iput p4, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mPhoneticNameColumn:I

    .line 154
    iput p5, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mAlternativeDisplayNameColumn:I

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZI)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aContactsIdColumn"    # I
    .param p3, "aDisplayNameColumn"    # I
    .param p4, "aSortedByPhonetic"    # Z
    .param p5, "aAlternativeDisplayNameColumn"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 113
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContext:Landroid/content/Context;

    .line 114
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContactsIdColumn:I

    .line 115
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mDisplayNameColumn:I

    .line 116
    iput-boolean p4, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mSortedByPhonetic:Z

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mPhoneticNameColumn:I

    .line 118
    iput p5, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mAlternativeDisplayNameColumn:I

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aDisplayNameColumn"    # I
    .param p3, "aSortedByPhonetic"    # Z
    .param p4, "aAlternativeDisplayNameColumn"    # I

    .prologue
    const/4 v1, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 93
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContext:Landroid/content/Context;

    .line 94
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContactsIdColumn:I

    .line 95
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mDisplayNameColumn:I

    .line 96
    iput-boolean p3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mSortedByPhonetic:Z

    .line 97
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mPhoneticNameColumn:I

    .line 98
    iput p4, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mAlternativeDisplayNameColumn:I

    .line 92
    return-void
.end method


# virtual methods
.method public final getAlterNameIndex(Landroid/database/Cursor;)I
    .locals 2
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 193
    const-string/jumbo v1, "sort_key_alt"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, "AlterNameIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContactsIdColumn:I

    .end local v0    # "AlterNameIndex":I
    :cond_0
    return v0
.end method

.method public final getIndexedCursor(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsIndexedCursor;
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, p1, v0, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->sort(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsIndexedCursor;

    return-object v0
.end method

.method public final getIndexedCursor(Landroid/database/Cursor;I)Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsIndexedCursor;
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aInitialPosition"    # I

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->sort(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsIndexedCursor;

    return-object v0
.end method

.method public bridge synthetic getIndexedCursor(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursor;
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->getIndexedCursor(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsIndexedCursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIndexedCursor(Landroid/database/Cursor;I)Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursor;
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aInitialPosition"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->getIndexedCursor(Landroid/database/Cursor;I)Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsIndexedCursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSortedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->getSortedCursor(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsCursor;

    move-result-object v0

    return-object v0
.end method

.method public final getSortedCursor(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsCursor;
    .locals 2
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 184
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->sort(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsCursor;

    return-object v0
.end method

.method protected final sort(Landroid/database/Cursor;II)Landroid/database/Cursor;
    .locals 30
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aMode"    # I
    .param p3, "aInitialPosition"    # I

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const/16 v21, 0x0

    return-object v21

    .line 212
    :cond_0
    const-wide/16 v22, 0x0

    .line 213
    .local v22, "time":J
    sget-boolean v21, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v21, :cond_1

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 217
    :cond_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContactsIdColumn:I

    .line 218
    .local v6, "contactsIdColumn":I
    if-gez v6, :cond_2

    .line 219
    const-string/jumbo v21, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 223
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;>;"
    const/16 v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v26, 0x7f0b002a

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mAlternativeDisplayNameColumn:I

    move/from16 v18, v0

    .line 236
    .local v18, "sortColunmIndex":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 237
    const/4 v12, 0x0

    .line 239
    .local v12, "index":I
    :goto_1
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;

    invoke-direct {v9}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;-><init>()V

    .line 240
    .local v9, "e":Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .local v13, "index":I
    invoke-virtual {v9, v12}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->setPosition(I)V

    .line 241
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->setId(J)V

    .line 242
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->setDisplayName(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mSortedByPhonetic:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mPhoneticNameColumn:I

    move/from16 v21, v0

    if-ltz v21, :cond_3

    .line 244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mPhoneticNameColumn:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->setPhoneticName(Ljava/lang/String;)V

    .line 246
    :cond_3
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_7

    move v12, v13

    .end local v13    # "index":I
    .restart local v12    # "index":I
    goto :goto_1

    .line 230
    .end local v9    # "e":Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;
    .end local v12    # "index":I
    .end local v18    # "sortColunmIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    move-result-object v7

    .line 231
    .local v7, "contactsPrefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getSortOrder()I

    move-result v21

    .line 232
    const/16 v26, 0x1

    .line 231
    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    const/16 v19, 0x1

    .line 233
    .local v19, "sortOrder":Z
    :goto_2
    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mDisplayNameColumn:I

    move/from16 v18, v0

    .restart local v18    # "sortColunmIndex":I
    goto :goto_0

    .line 231
    .end local v18    # "sortColunmIndex":I
    .end local v19    # "sortOrder":Z
    :cond_5
    const/16 v19, 0x0

    .restart local v19    # "sortOrder":Z
    goto :goto_2

    .line 233
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->getAlterNameIndex(Landroid/database/Cursor;)I

    move-result v18

    .restart local v18    # "sortColunmIndex":I
    goto/16 :goto_0

    .line 250
    .end local v7    # "contactsPrefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    .end local v19    # "sortOrder":Z
    :cond_7
    sget-boolean v21, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v21, :cond_8

    .line 251
    const-string/jumbo v21, "ContactsCursorSorter"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "create: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 252
    const-string/jumbo v27, "ms"

    .line 251
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mSortedByPhonetic:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mPhoneticNameColumn:I

    move/from16 v21, v0

    if-gez v21, :cond_9

    .line 256
    new-instance v10, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;-><init>(Landroid/content/Context;)V

    .line 257
    .local v10, "getter":Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;
    invoke-virtual {v10, v15}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;->getPhoneticName(Ljava/util/List;)V

    .line 260
    .end local v10    # "getter":Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;
    :cond_9
    const-wide/16 v24, 0x0

    .line 261
    .local v24, "time1":J
    sget-boolean v21, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v21, :cond_a

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 265
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 268
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;->mIndexBilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 269
    .local v4, "builder":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v15, v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->build(Ljava/util/ArrayList;II)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v14

    .line 270
    .local v14, "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 271
    .local v17, "size":I
    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 272
    .local v16, "positionMap":[I
    const/4 v5, 0x0

    .line 273
    .local v5, "cnt":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v20, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v11, v0, :cond_d

    .line 275
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;

    .line 276
    .restart local v9    # "e":Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->getPosition()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x1

    cmp-long v21, v26, v28

    if-nez v21, :cond_c

    .line 277
    const v21, -0x186a0

    add-int v21, v21, v5

    aput v21, v16, v11

    .line 278
    add-int/lit8 v5, v5, 0x1

    .line 279
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->getSortString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 281
    :cond_c
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->getPosition()I

    move-result v21

    aput v21, v16, v11

    goto :goto_4

    .line 285
    .end local v9    # "e":Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;
    :cond_d
    sget-boolean v21, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v21, :cond_e

    .line 286
    const-string/jumbo v21, "ContactsCursorSorter"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "sort: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v24

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 287
    const-string/jumbo v27, "ms"

    .line 286
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v21, "ContactsCursorSorter"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "sort total: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 289
    const-string/jumbo v27, "ms"

    .line 288
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_e
    const/4 v8, 0x0

    .line 292
    .local v8, "cursor":Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;
    if-nez p2, :cond_f

    .line 293
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsIndexedCursor;

    .line 294
    .end local v8    # "cursor":Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    .line 293
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v8, v0, v1, v2, v14}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsIndexedCursor;-><init>(Landroid/database/Cursor;[I[Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;)V

    .line 299
    .local v8, "cursor":Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;
    :goto_5
    return-object v8

    .line 297
    .local v8, "cursor":Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;
    :cond_f
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsCursor;

    .end local v8    # "cursor":Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v8, v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsCursor;-><init>(Landroid/database/Cursor;[I)V

    .local v8, "cursor":Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;
    goto :goto_5
.end method
