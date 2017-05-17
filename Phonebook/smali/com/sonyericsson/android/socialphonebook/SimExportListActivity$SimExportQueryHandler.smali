.class Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;
.super Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;
.source "SimExportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimExportQueryHandler"
.end annotation


# static fields
.field private static final QUERY_TAG_RAW_CONTACTS:I = 0x1400

.field private static final QUERY_TAG_RAW_SELECTION:I = 0x1401


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;
    .param p2, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    .line 147
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V

    .line 146
    return-void
.end method

.method private buildCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 10
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x0

    .line 270
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildCursor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 272
    if-nez p1, :cond_1

    .line 273
    :cond_0
    return-object v9

    .line 278
    :cond_1
    :try_start_0
    new-instance v4, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 279
    .local v4, "newCursor":Landroid/database/MatrixCursor;
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 281
    const/4 v6, 0x0

    .line 280
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 282
    .local v2, "id":J
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;

    .line 283
    .local v0, "entry":Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;
    if-eqz v0, :cond_2

    .line 285
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    array-length v6, v6

    new-array v5, v6, [Ljava/lang/Object;

    .line 287
    .local v5, "row":[Ljava/lang/Object;
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->setName(Ljava/lang/String;)V

    .line 290
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 289
    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 291
    const/4 v6, 0x1

    aput-object v1, v5, v6

    .line 293
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 292
    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 295
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 294
    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 297
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 296
    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 299
    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 298
    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 301
    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 300
    const/4 v7, 0x6

    aput-object v6, v5, v7

    .line 303
    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 302
    const/4 v7, 0x7

    aput-object v6, v5, v7

    .line 305
    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 304
    const/16 v7, 0x8

    aput-object v6, v5, v7

    .line 307
    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 306
    const/16 v7, 0x9

    aput-object v6, v5, v7

    .line 309
    const/16 v6, 0xa

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 308
    const/16 v7, 0xa

    aput-object v6, v5, v7

    .line 310
    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 313
    .end local v0    # "entry":Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "id":J
    .end local v4    # "newCursor":Landroid/database/MatrixCursor;
    .end local v5    # "row":[Ljava/lang/Object;
    :catchall_0
    move-exception v6

    .line 314
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 313
    throw v6

    .line 314
    .restart local v4    # "newCursor":Landroid/database/MatrixCursor;
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 316
    return-object v4
.end method

.method private buildPhoneNumberMap(Landroid/database/Cursor;)V
    .locals 27
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 151
    sget-object v24, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "buildPhoneNumberMap "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-nez p1, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Ljava/util/HashMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    .line 157
    const-string/jumbo v24, "contact_id"

    .line 156
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 159
    .local v8, "cidIdx":I
    const-string/jumbo v24, "mimetype"

    .line 158
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 161
    .local v10, "mimeIdx":I
    const-string/jumbo v24, "is_super_primary"

    .line 160
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 163
    .local v21, "sprimaryIdx":I
    const-string/jumbo v24, "is_primary"

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 165
    .local v15, "primaryIdx":I
    const-string/jumbo v24, "data2"

    .line 164
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 167
    .local v23, "typeIdx":I
    const-string/jumbo v24, "data1"

    .line 166
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 169
    .local v14, "numberIdx":I
    const-string/jumbo v24, "data1"

    .line 168
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 171
    .local v5, "addressIdx":I
    const-wide/16 v16, -0x1

    .line 176
    .local v16, "prevCid":J
    const/4 v12, 0x0

    .line 177
    .local v12, "num_primary":I
    const/4 v9, 0x0

    .line 180
    .local v9, "email_primary":I
    const/16 v19, 0x0

    .line 181
    .local v19, "secondNum_primary":I
    const/16 v22, 0x0

    .line 182
    .local v22, "type":I
    const/4 v13, 0x0

    .line 183
    .local v13, "number":Ljava/lang/String;
    const/16 v20, 0x0

    .line 184
    .local v20, "secondNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 185
    .local v4, "address":Ljava/lang/String;
    :try_start_0
    sget-object v24, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, " count "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v4    # "address":Ljava/lang/String;
    .end local v13    # "number":Ljava/lang/String;
    .end local v20    # "secondNumber":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 187
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 188
    .local v6, "cid":J
    cmp-long v24, v6, v16

    if-eqz v24, :cond_3

    .line 191
    const-wide/16 v24, -0x1

    cmp-long v24, v16, v24

    if-eqz v24, :cond_2

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Ljava/util/HashMap;

    move-result-object v24

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 193
    new-instance v26, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;

    move-object/from16 v0, v26

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2, v4}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_2
    const/4 v13, 0x0

    .line 196
    .restart local v13    # "number":Ljava/lang/String;
    const/16 v22, 0x0

    .line 197
    const/4 v12, 0x0

    .line 198
    const/4 v9, 0x0

    .line 199
    const/16 v19, 0x0

    .line 200
    move-wide/from16 v16, v6

    .line 201
    const/16 v20, 0x0

    .line 202
    .restart local v20    # "secondNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 209
    .end local v13    # "number":Ljava/lang/String;
    .end local v20    # "secondNumber":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 210
    .local v11, "mimeType":Ljava/lang/String;
    const-string/jumbo v24, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 214
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    mul-int/lit8 v24, v24, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    add-int v18, v24, v25

    .line 216
    .local v18, "prm":I
    move/from16 v0, v18

    if-lt v0, v12, :cond_7

    .line 217
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 223
    if-nez v20, :cond_4

    .line 224
    move-object/from16 v20, v13

    .line 225
    .local v20, "secondNumber":Ljava/lang/String;
    move/from16 v19, v12

    .line 228
    .end local v20    # "secondNumber":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 229
    .local v13, "number":Ljava/lang/String;
    move/from16 v12, v18

    .line 239
    .end local v13    # "number":Ljava/lang/String;
    :cond_5
    :goto_1
    sget-boolean v24, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 240
    sget-object v24, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, " cid "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " type "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 241
    const-string/jumbo v26, " / number "

    .line 240
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v18    # "prm":I
    :cond_6
    const-string/jumbo v24, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 251
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    mul-int/lit8 v24, v24, 0xa

    .line 252
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 251
    add-int v18, v24, v25

    .line 253
    .restart local v18    # "prm":I
    move/from16 v0, v18

    if-lt v0, v9, :cond_1

    .line 254
    move/from16 v9, v18

    .line 255
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "address":Ljava/lang/String;
    sget-boolean v24, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v24, :cond_1

    .line 257
    sget-object v24, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, " cid "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " / address "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 264
    .end local v4    # "address":Ljava/lang/String;
    .end local v6    # "cid":J
    .end local v11    # "mimeType":Ljava/lang/String;
    .end local v18    # "prm":I
    :catchall_0
    move-exception v24

    .line 265
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 264
    throw v24

    .line 231
    .restart local v6    # "cid":J
    .restart local v11    # "mimeType":Ljava/lang/String;
    .restart local v18    # "prm":I
    :cond_7
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    move/from16 v0, v18

    if-ge v0, v12, :cond_5

    .line 235
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 236
    .restart local v20    # "secondNumber":Ljava/lang/String;
    move/from16 v19, v18

    goto/16 :goto_1

    .line 263
    .end local v6    # "cid":J
    .end local v11    # "mimeType":Ljava/lang/String;
    .end local v18    # "prm":I
    .end local v20    # "secondNumber":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Ljava/util/HashMap;

    move-result-object v24

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    new-instance v26, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;

    move-object/from16 v0, v26

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2, v4}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 150
    return-void
.end method

.method private errorDialogShow(I)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "msgid"    # I

    .prologue
    .line 403
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09029d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 407
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler$1;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;)V

    .line 406
    const v3, 0x7f090200

    .line 404
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 415
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler$2;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;)V

    .line 404
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected onPostQuery(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;ILjava/lang/Object;Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;
    .locals 7
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
    .param p2, "aToken"    # I
    .param p3, "aCookie"    # Ljava/lang/Object;
    .param p4, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    .line 336
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPostQuery "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/16 v3, 0x1401

    if-ne p2, v3, :cond_3

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v2, "selection":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_2

    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 343
    const-string/jumbo v3, "contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string/jumbo v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string/jumbo v3, "_id"

    invoke-interface {p4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, "columnIndex":I
    :goto_0
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 351
    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .end local v0    # "columnIndex":I
    :goto_1
    if-eqz p4, :cond_1

    .line 359
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-wrap1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;Ljava/lang/String;)V

    .line 363
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;

    invoke-direct {v3, p3, v6}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;-><init>(Ljava/lang/Object;Landroid/database/Cursor;)V

    return-object v3

    .line 355
    :cond_2
    const-string/jumbo v3, "0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 364
    .end local v2    # "selection":Ljava/lang/StringBuilder;
    :cond_3
    const/16 v3, 0x1400

    if-ne p2, v3, :cond_4

    .line 365
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->buildPhoneNumberMap(Landroid/database/Cursor;)V

    .line 366
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-wrap2(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)V

    .line 367
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;

    invoke-direct {v3, p3, v6}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;-><init>(Ljava/lang/Object;Landroid/database/Cursor;)V

    return-object v3

    .line 369
    :cond_4
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->buildCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->getIndexedCursor(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 370
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;

    invoke-direct {v3, p3, v1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;-><init>(Ljava/lang/Object;Landroid/database/Cursor;)V

    return-object v3
.end method

.method protected onQueryComplete(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
    .param p2, "aToken"    # I
    .param p3, "aCookie"    # Ljava/lang/Object;
    .param p4, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 387
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 388
    const/16 v0, 0x1400

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1401

    if-eq p2, v0, :cond_2

    .line 389
    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    .line 391
    const v1, 0x7f0902d1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->errorDialogShow(I)Landroid/app/AlertDialog;

    move-result-object v1

    .line 390
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 399
    :cond_0
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 386
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p4}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 396
    :cond_2
    if-eqz p4, :cond_0

    .line 397
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
