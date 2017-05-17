.class Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;
.super Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;
.source "GroupCreateOrEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersistTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        "Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PersistTask"


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V
    .locals 0
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    .prologue
    .line 1312
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1311
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 36
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;
    .param p2, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1326
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get6(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)J

    move-result-wide v8

    .line 1327
    .local v8, "groupId":J
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 1329
    .local v27, "resolver":Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get5(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Landroid/widget/EditText;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1331
    .local v7, "groupLabel":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get10(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Landroid/net/Uri;

    move-result-object v33

    if-nez v33, :cond_3

    .line 1334
    new-instance v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 1335
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    .line 1334
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v4, v0, v1, v2}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    .local v4, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 1338
    .local v32, "values":Landroid/content/ContentValues;
    const-string/jumbo v33, "account_type"

    iget-object v0, v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const-string/jumbo v33, "account_name"

    iget-object v0, v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const-string/jumbo v33, "data_set"

    iget-object v0, v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    const-string/jumbo v33, "title"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    const-string/jumbo v33, "group_visible"

    const-string/jumbo v34, "1"

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    sget-object v33, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 1345
    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1352
    .local v11, "groupUri":Landroid/net/Uri;
    if-nez v11, :cond_0

    .line 1353
    const-string/jumbo v33, "PersistTask"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Couldn\'t create group with label "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    return-object v33

    .line 1356
    :cond_0
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-set2(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1360
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get9(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)[B

    move-result-object v33

    if-eqz v33, :cond_1

    .line 1361
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupPhoto;->createUri(J)Landroid/net/Uri;

    move-result-object v31

    .line 1363
    .local v31, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1364
    .local v5, "data":Landroid/content/ContentValues;
    const-string/jumbo v33, "mimetype"

    const-string/jumbo v34, "vnd.android.cursor.item/vnd.sonyericsson.android.group.photo"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string/jumbo v33, "data15"

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get9(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)[B

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1366
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1370
    .end local v5    # "data":Landroid/content/ContentValues;
    .end local v31    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_2

    .line 1371
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupRingtone;->createUri(J)Landroid/net/Uri;

    move-result-object v31

    .line 1373
    .restart local v31    # "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1374
    .restart local v5    # "data":Landroid/content/ContentValues;
    const-string/jumbo v33, "mimetype"

    const-string/jumbo v34, "vnd.android.cursor.item/vnd.sonyericsson.android.group.ringtone"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string/jumbo v33, "data1"

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1381
    .end local v5    # "data":Landroid/content/ContentValues;
    .end local v31    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)[J

    move-result-object v33

    .line 1382
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v34

    .line 1380
    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->addMembersToGroup(Landroid/content/ContentResolver;[JJ)V

    .line 1487
    .end local v4    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v32    # "values":Landroid/content/ContentValues;
    :goto_0
    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    return-object v33

    .line 1386
    .end local v11    # "groupUri":Landroid/net/Uri;
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 1388
    .local v20, "mTempAddMemberArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;>;"
    const/16 v22, 0x0

    .line 1389
    .local v22, "membersToAddArray":[J
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get7(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/util/ArrayList;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "itemNew$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    .line 1390
    .local v16, "itemNew":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 1391
    .local v15, "isInOld":Ljava/lang/Boolean;
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get8(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/util/ArrayList;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "itemOld$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    .line 1392
    .local v18, "itemOld":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->equals(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_5

    .line 1393
    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 1397
    .end local v18    # "itemOld":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    :cond_6
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-nez v33, :cond_4

    .line 1398
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1401
    .end local v15    # "isInOld":Ljava/lang/Boolean;
    .end local v16    # "itemNew":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    .end local v19    # "itemOld$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-eqz v33, :cond_8

    .line 1402
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 1403
    .local v29, "tempMembersToAddSize":I
    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v22, v0

    .line 1404
    .local v22, "membersToAddArray":[J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v29

    if-ge v12, v0, :cond_8

    .line 1405
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mRawContactId:J

    move-wide/from16 v34, v0

    aput-wide v34, v22, v12

    .line 1404
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1409
    .end local v12    # "i":I
    .end local v22    # "membersToAddArray":[J
    .end local v29    # "tempMembersToAddSize":I
    :cond_8
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 1411
    .local v21, "mTempRemoveMemberArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;>;"
    const/16 v23, 0x0

    .line 1412
    .local v23, "membersToRemoveArray":[J
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get8(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/util/ArrayList;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "itemOld$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    .line 1413
    .restart local v18    # "itemOld":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 1414
    .local v14, "isInNew":Ljava/lang/Boolean;
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get7(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/util/ArrayList;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    .line 1415
    .restart local v16    # "itemNew":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->equals(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_a

    .line 1416
    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 1420
    .end local v16    # "itemNew":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    :cond_b
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-nez v33, :cond_9

    .line 1421
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1424
    .end local v14    # "isInNew":Ljava/lang/Boolean;
    .end local v18    # "itemOld":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    :cond_c
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-eqz v33, :cond_d

    .line 1425
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 1427
    .local v30, "tempMembersToRemoveSize":I
    move/from16 v0, v30

    new-array v0, v0, [J

    move-object/from16 v23, v0

    .line 1428
    .local v23, "membersToRemoveArray":[J
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    move/from16 v0, v30

    if-ge v12, v0, :cond_d

    .line 1429
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mRawContactId:J

    move-wide/from16 v34, v0

    aput-wide v34, v23, v12

    .line 1428
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1434
    .end local v12    # "i":I
    .end local v23    # "membersToRemoveArray":[J
    .end local v30    # "tempMembersToRemoveSize":I
    :cond_d
    const-wide/16 v34, -0x1

    cmp-long v33, v8, v34

    if-nez v33, :cond_e

    .line 1435
    const-string/jumbo v33, "PersistTask"

    const-string/jumbo v34, "Invalid arguments for updateGroup request"

    invoke-static/range {v33 .. v34}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    return-object v33

    .line 1440
    :cond_e
    sget-object v33, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 1439
    move-object/from16 v0, v33

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 1442
    .restart local v11    # "groupUri":Landroid/net/Uri;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1445
    .local v10, "groupOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get12(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Z

    move-result v33

    if-nez v33, :cond_f

    .line 1446
    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 1448
    .local v13, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v33, "title"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1449
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    .end local v13    # "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get9(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)[B

    move-result-object v33

    .line 1452
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;->updateGroupPhoto(Landroid/content/ContentResolver;[BJ)Landroid/content/ContentProviderOperation;

    move-result-object v26

    .line 1454
    .local v26, "photoOperation":Landroid/content/ContentProviderOperation;
    if-eqz v26, :cond_10

    .line 1455
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1458
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;

    move-result-object v33

    .line 1457
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;->updateGroupRingtone(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v28

    .line 1460
    .local v28, "ringtoneOperation":Landroid/content/ContentProviderOperation;
    if-eqz v28, :cond_11

    .line 1461
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    :cond_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_13

    .line 1467
    :try_start_0
    sget-boolean v33, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v33, :cond_12

    .line 1468
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "operation$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_12

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/ContentProviderOperation;

    .line 1469
    .local v24, "operation":Landroid/content/ContentProviderOperation;
    const-string/jumbo v33, "PersistTask"

    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1474
    .end local v24    # "operation":Landroid/content/ContentProviderOperation;
    .end local v25    # "operation$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v6

    .line 1475
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v33, "PersistTask"

    const-string/jumbo v34, "Cannot save new group member list!"

    invoke-static/range {v33 .. v34}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1477
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    return-object v33

    .line 1472
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_12
    :try_start_1
    const-string/jumbo v33, "com.android.contacts"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1482
    :cond_13
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8, v9}, Lcom/android/contacts/ContactSaveService;->addMembersToGroup(Landroid/content/ContentResolver;[JJ)V

    .line 1484
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8, v9}, Lcom/android/contacts/ContactSaveService;->removeMembersFromGroup(Landroid/content/ContentResolver;[JJ)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1325
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Void;

    .end local p2    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;->doInBackground(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;[Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;
    .param p2, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 1492
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get14(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 1495
    .local v0, "progress":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1499
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1500
    const v1, 0x7f09026e

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1506
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-wrap5(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Z)V

    .line 1491
    return-void

    .line 1496
    :cond_1
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 1502
    :cond_2
    const v1, 0x7f090274

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 1491
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;->onPostExecute(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V
    .locals 3
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    .prologue
    .line 1319
    const v1, 0x7f090284

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1318
    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1320
    .local v0, "dlg":Landroid/app/ProgressDialog;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-set5(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 1321
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->startManagingDialog(Landroid/app/Dialog;)V

    .line 1317
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 1317
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;->onPreExecute(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    return-void
.end method

.method public updateGroupPhoto(Landroid/content/ContentResolver;[BJ)Landroid/content/ContentProviderOperation;
    .locals 11
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "photo"    # [B
    .param p3, "groupId"    # J

    .prologue
    .line 1512
    const/4 v8, 0x0

    .line 1514
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const/4 v10, 0x0

    .line 1515
    .local v10, "queryCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1517
    .local v9, "oldPhoto":[B
    invoke-static {p3, p4}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupPhoto;->createUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 1518
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "mimetype=\'vnd.android.cursor.item/vnd.sonyericsson.android.group.photo\'"

    .line 1521
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    .line 1522
    const-string/jumbo v0, "data15"

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 1523
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 1521
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1525
    .local v10, "queryCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    const-string/jumbo v0, "data15"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1532
    .end local v9    # "oldPhoto":[B
    :cond_0
    if-eqz v10, :cond_1

    .line 1533
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1537
    .end local v10    # "queryCursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-eqz v9, :cond_4

    if-nez p2, :cond_4

    .line 1539
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1540
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const/4 v0, 0x0

    invoke-virtual {v8, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1557
    .end local v8    # "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    :goto_1
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    :goto_2
    return-object v0

    .line 1528
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v9    # "oldPhoto":[B
    :catch_0
    move-exception v7

    .line 1529
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "PersistTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to query or handle cursor "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1532
    if-eqz v10, :cond_1

    .line 1533
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1531
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1532
    if-eqz v10, :cond_3

    .line 1533
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1531
    :cond_3
    throw v0

    .line 1542
    .end local v9    # "oldPhoto":[B
    :cond_4
    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    .line 1543
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1544
    .local v6, "data":Landroid/content/ContentValues;
    const-string/jumbo v0, "data15"

    invoke-virtual {v6, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1545
    if-nez v9, :cond_5

    .line 1547
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1548
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v0, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/vnd.sonyericsson.android.group.photo"

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    :goto_3
    invoke-virtual {v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 1551
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1552
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const/4 v0, 0x0

    invoke-virtual {v8, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 1557
    .end local v6    # "data":Landroid/content/ContentValues;
    .end local v8    # "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public updateGroupRingtone(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/content/ContentProviderOperation;
    .locals 11
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "ringtone"    # Ljava/lang/String;
    .param p3, "groupId"    # J

    .prologue
    .line 1562
    const/4 v8, 0x0

    .line 1565
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    invoke-static {p3, p4}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupRingtone;->createUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 1566
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "mimetype=\'vnd.android.cursor.item/vnd.sonyericsson.android.group.ringtone\'"

    .line 1567
    .local v3, "selection":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1568
    .local v10, "queryCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1571
    .local v9, "oldRingtone":Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    .line 1572
    const-string/jumbo v0, "data1"

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 1573
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 1571
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1575
    .local v10, "queryCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    const-string/jumbo v0, "data1"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1582
    .end local v9    # "oldRingtone":Ljava/lang/String;
    :cond_0
    if-eqz v10, :cond_1

    .line 1583
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1587
    .end local v10    # "queryCursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-static {v9, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1588
    const/4 v0, 0x0

    return-object v0

    .line 1578
    .restart local v9    # "oldRingtone":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1579
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "PersistTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to query or handle cursor "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1582
    if-eqz v10, :cond_1

    .line 1583
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1581
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1582
    if-eqz v10, :cond_2

    .line 1583
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1581
    :cond_2
    throw v0

    .line 1591
    .end local v9    # "oldRingtone":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_5

    if-nez p2, :cond_5

    .line 1593
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1594
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const/4 v0, 0x0

    invoke-virtual {v8, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1610
    .end local v8    # "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_4
    :goto_1
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    :goto_2
    return-object v0

    .line 1595
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1596
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1597
    .local v6, "data":Landroid/content/ContentValues;
    const-string/jumbo v0, "data1"

    invoke-virtual {v6, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    if-nez v9, :cond_6

    .line 1600
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1601
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v0, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/vnd.sonyericsson.android.group.ringtone"

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :goto_3
    invoke-virtual {v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 1604
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_6
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1605
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const/4 v0, 0x0

    invoke-virtual {v8, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 1610
    .end local v6    # "data":Landroid/content/ContentValues;
    .end local v8    # "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method
