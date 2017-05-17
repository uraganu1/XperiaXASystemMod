.class public Lcom/sonyericsson/android/socialphonebook/LocalProfile;
.super Ljava/lang/Object;
.source "LocalProfile.java"


# static fields
.field public static final EMAIL_ACCOUNT_URI:Landroid/net/Uri;

.field public static final FLAG_COLUMN:Ljava/lang/String; = "data_sync2"

.field private static final FLAG_SLOT_COLUMN:Ljava/lang/String; = "data_sync3"

.field public static final FLAG_VALUE:Ljava/lang/String; = "semc:"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/sonyericsson/android/socialphonebook/LocalProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->TAG:Ljava/lang/String;

    .line 370
    const-string/jumbo v0, "content://com.sonymobile.email.provider/account"

    .line 369
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static autoFillProfile(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawContactId"    # J

    .prologue
    const/4 v6, 0x0

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const-string/jumbo v4, "deleted"

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    const-string/jumbo v4, "=0 AND "

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 111
    const-string/jumbo v4, "mimetype"

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 111
    const-string/jumbo v4, " IN (\'"

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 112
    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 112
    const-string/jumbo v4, "\', \'"

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 113
    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 113
    const-string/jumbo v4, "\')"

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    .local v2, "whereClause":Ljava/lang/StringBuilder;
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-static {v3, v4, v5, v6, v6}, Lcom/android/contacts/common/model/RawContactDeltaList;->fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/RawContactDeltaList;

    move-result-object v1

    .line 118
    .local v1, "set":Lcom/android/contacts/common/model/RawContactDeltaList;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/model/RawContactDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v0

    .line 119
    .local v0, "entity":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->doUpdateWithDelta(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;J)V

    .line 108
    return-void
.end method

.method private static createProfile(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 359
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 360
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "account_name"

    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v2, "account_type"

    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v2, "data_set"

    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 364
    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 363
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 365
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    return-wide v2
.end method

.method private static doUpdateWithDelta(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;J)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "rawContactId"    # J

    .prologue
    .line 130
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v6, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getEnableSimPhoneNumberAutoLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    .line 135
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->pushSimOperation(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;JLjava/util/ArrayList;I)V

    .line 137
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->pushSimOperation(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;JLjava/util/ArrayList;I)V

    .line 144
    :cond_0
    :goto_0
    const/16 v16, 0x0

    .line 145
    .local v16, "hasPrimary":Z
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isRegisteredEmailAddressesEnabled()Z

    move-result v18

    .line 147
    .local v18, "isRegisteredEmailAddressesEnabled":Z
    const/4 v8, 0x0

    .line 148
    .local v8, "builder":Landroid/content/ContentProviderOperation$Builder;
    const/16 v20, 0x0

    .line 149
    .local v20, "oldEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 150
    .local v15, "hasEmails":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 151
    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 153
    .end local v20    # "oldEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    if-eqz v18, :cond_9

    .line 154
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->readFromEmailAccount(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v19

    .line 155
    .local v19, "newEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v20, :cond_5

    .line 156
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "e$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/common/model/ValuesDelta;

    .line 157
    .local v12, "e":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 158
    .local v14, "email":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {v15, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    const-string/jumbo v2, "is_primary"

    invoke-virtual {v12, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 162
    .local v21, "p":Ljava/lang/Integer;
    if-nez v16, :cond_2

    if-eqz v21, :cond_2

    .line 163
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_4

    const/16 v16, 0x1

    goto :goto_1

    .line 139
    .end local v8    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v12    # "e":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v13    # "e$iterator":Ljava/util/Iterator;
    .end local v14    # "email":Ljava/lang/String;
    .end local v15    # "hasEmails":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "hasPrimary":Z
    .end local v18    # "isRegisteredEmailAddressesEnabled":Z
    .end local v19    # "newEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "p":Ljava/lang/Integer;
    :cond_3
    const/4 v7, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->pushSimOperation(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;JLjava/util/ArrayList;I)V

    goto :goto_0

    .line 163
    .restart local v8    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v12    # "e":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v13    # "e$iterator":Ljava/util/Iterator;
    .restart local v14    # "email":Ljava/lang/String;
    .restart local v15    # "hasEmails":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "hasPrimary":Z
    .restart local v18    # "isRegisteredEmailAddressesEnabled":Z
    .restart local v19    # "newEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "p":Ljava/lang/Integer;
    :cond_4
    const/16 v16, 0x0

    goto :goto_1

    .line 169
    .end local v12    # "e":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v13    # "e$iterator":Ljava/util/Iterator;
    .end local v14    # "email":Ljava/lang/String;
    .end local v21    # "p":Ljava/lang/Integer;
    :cond_5
    const/16 v17, 0x0

    .end local v8    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .local v17, "i":I
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_b

    .line 170
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 172
    .restart local v14    # "email":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v15, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 169
    :cond_6
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 176
    :cond_7
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v22, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v2, "data1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v2, "data2"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string/jumbo v2, "data_sync2"

    const-string/jumbo v3, "semc:"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-nez v16, :cond_8

    if-nez v17, :cond_8

    .line 182
    const-string/jumbo v2, "is_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    :cond_8
    const-string/jumbo v2, "raw_contact_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v9

    .line 187
    .local v9, "delta":Lcom/android/contacts/common/model/ValuesDelta;
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 188
    const-string/jumbo v3, "data"

    .line 187
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 189
    .local v8, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v8, :cond_6

    .line 190
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 194
    .end local v9    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v14    # "email":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v19    # "newEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "values":Landroid/content/ContentValues;
    .local v8, "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_9
    if-eqz v20, :cond_b

    .line 195
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v8    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v13    # "e$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/common/model/ValuesDelta;

    .line 196
    .restart local v12    # "e":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v2, "semc:"

    const-string/jumbo v3, "data_sync2"

    invoke-virtual {v12, v3}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 198
    invoke-virtual {v12}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    .line 199
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 200
    const-string/jumbo v3, "data"

    .line 199
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 201
    .local v8, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v8, :cond_a

    .line 202
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 207
    .end local v8    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v12    # "e":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v13    # "e$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 210
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "com.android.contacts"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_c
    :goto_5
    return-void

    .line 213
    :catch_0
    move-exception v10

    .line 214
    .local v10, "e":Landroid/content/OperationApplicationException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 211
    .end local v10    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v11

    .line 212
    .local v11, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->TAG:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static getRawContactId(Landroid/content/Context;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 314
    const-wide/16 v2, -0x1

    .line 315
    .local v2, "id":J
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForProfile(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v4

    .line 316
    .local v4, "localAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const/4 v0, 0x0

    .line 318
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->queryRawContact(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 319
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 322
    invoke-static {p0, v4}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->createProfile(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 350
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 351
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_1
    return-wide v2

    .line 323
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 324
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 325
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 328
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->TAG:Ljava/lang/String;

    .line 329
    const-string/jumbo v7, "More than one local profile row_contact in profile database."

    .line 328
    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v6, v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 333
    const-string/jumbo v1, " is null"

    .line 334
    .local v1, "dataSetString":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/String;

    iget-object v6, v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 335
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 341
    .local v5, "params":[Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 342
    sget-object v7, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 343
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "account_name=? AND account_type=? AND data_set=? AND contact_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 341
    invoke-virtual {v6, v7, v8, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 349
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "dataSetString":Ljava/lang/String;
    .end local v5    # "params":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 350
    if-eqz v0, :cond_3

    .line 351
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_3
    throw v6

    .line 337
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_2
    const-string/jumbo v1, "=?"

    .line 338
    .restart local v1    # "dataSetString":Ljava/lang/String;
    const/4 v6, 0x4

    new-array v5, v6, [Ljava/lang/String;

    iget-object v6, v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 339
    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    .restart local v5    # "params":[Ljava/lang/String;
    goto :goto_1
.end method

.method private static insertMedicalInformation(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawContactId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 451
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.sonymobile.android.medical_info"

    .line 452
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 453
    const-string/jumbo v2, "mimetype"

    invoke-virtual {p3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 456
    const-string/jumbo v3, "data"

    .line 455
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 458
    .local v1, "profileDataUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    .line 459
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Insertion of ICE Medical information failed!"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_0
    return-void
.end method

.method public static isLocalProfileAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForProfile(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    .line 420
    .local v0, "localProfileAcc":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v1, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 420
    if-eqz v1, :cond_0

    .line 422
    iget-object v1, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v1, p3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 420
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isProfileEmpty(Landroid/content/ContentResolver;)Z
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 434
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 435
    .local v6, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v0, "data"

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 436
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 437
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 436
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 438
    .local v7, "profileDataCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 440
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 444
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 441
    return v8

    .line 444
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_1
    return v9

    .line 443
    :catchall_0
    move-exception v0

    .line 444
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 443
    throw v0
.end method

.method public static declared-synchronized loadProfile(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "withAllFeatures"    # Z

    .prologue
    const-class v3, Lcom/sonyericsson/android/socialphonebook/LocalProfile;

    monitor-enter v3

    .line 101
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->getRawContactId(Landroid/content/Context;)J

    move-result-wide v0

    .line 103
    .local v0, "rawContactId":J
    if-eqz p1, :cond_0

    .line 104
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->autoFillProfile(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 100
    return-void

    .end local v0    # "rawContactId":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static pushSimOperation(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;JLjava/util/ArrayList;I)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "rawContactId"    # J
    .param p5, "sub"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p4, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 223
    .local v7, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v6, 0x0

    .line 224
    .local v6, "phoneRowDelta":Lcom/android/contacts/common/model/ValuesDelta;
    if-eqz p1, :cond_0

    .line 225
    const-string/jumbo v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p1, v11}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 228
    .end local v7    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_0
    move/from16 v0, p5

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getLine1Number(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, "simPhoneNumber":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 231
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "phoneRow$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    .line 232
    .local v4, "phoneRow":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v11, "data4"

    invoke-virtual {v4, v11}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "phoneNumber":Ljava/lang/String;
    const-string/jumbo v11, "data_sync2"

    invoke-virtual {v4, v11}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "flag":Ljava/lang/String;
    const-string/jumbo v11, "data_sync3"

    .line 235
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 234
    invoke-virtual {v4, v11, v12}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    .line 236
    .local v9, "subscription":Ljava/lang/Integer;
    const-string/jumbo v11, "semc:"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 237
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v0, p5

    if-ne v0, v11, :cond_1

    .line 240
    move-object v6, v4

    .line 246
    .end local v2    # "flag":Ljava/lang/String;
    .end local v3    # "phoneNumber":Ljava/lang/String;
    .end local v4    # "phoneRow":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v5    # "phoneRow$iterator":Ljava/util/Iterator;
    .end local v6    # "phoneRowDelta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v9    # "subscription":Ljava/lang/Integer;
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 247
    if-eqz v6, :cond_4

    .line 248
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    .line 274
    :cond_4
    :goto_0
    if-eqz v6, :cond_5

    .line 275
    sget-object v11, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 276
    const-string/jumbo v12, "data"

    .line 275
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 277
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v1, :cond_5

    .line 278
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v1    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    return-void

    .line 252
    :cond_6
    if-eqz v6, :cond_7

    .line 253
    const-string/jumbo v11, "data1"

    invoke-virtual {v6, v11, v8}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string/jumbo v11, "data_sync2"

    const-string/jumbo v12, "semc:"

    invoke-virtual {v6, v11, v12}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v11

    invoke-interface {v11}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 256
    const-string/jumbo v11, "data_sync3"

    move/from16 v0, p5

    invoke-virtual {v6, v11, v0}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    goto :goto_0

    .line 259
    :cond_7
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "mimetype"

    const-string/jumbo v12, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v11, "data1"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v11, "data2"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string/jumbo v11, "data_sync2"

    const-string/jumbo v12, "semc:"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v11, "is_primary"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string/jumbo v11, "raw_contact_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v11

    invoke-interface {v11}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 267
    const-string/jumbo v11, "data_sync3"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    :cond_8
    invoke-static {v10}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v6

    .local v6, "phoneRowDelta":Lcom/android/contacts/common/model/ValuesDelta;
    goto/16 :goto_0
.end method

.method private static queryRawContact(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 284
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForProfile(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v7

    .line 287
    .local v7, "localAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 288
    const-string/jumbo v6, " is null"

    .line 289
    .local v6, "dataSetString":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    aput-object v0, v4, v9

    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    aput-object v0, v4, v2

    .line 294
    .local v4, "params":[Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "account_name"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    const-string/jumbo v1, "=? AND "

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    const-string/jumbo v1, "account_type"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    const-string/jumbo v1, "=? AND "

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    const-string/jumbo v1, "data_set"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    const-string/jumbo v1, " AND "

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string/jumbo v1, "deleted"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string/jumbo v1, "= 0"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 298
    .local v8, "localProfileQuery":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 299
    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v9

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 291
    .end local v4    # "params":[Ljava/lang/String;
    .end local v6    # "dataSetString":Ljava/lang/String;
    .end local v8    # "localProfileQuery":Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v6, "=?"

    .line 292
    .restart local v6    # "dataSetString":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    aput-object v0, v4, v9

    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    aput-object v0, v4, v2

    iget-object v0, v7, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    aput-object v0, v4, v1

    .restart local v4    # "params":[Ljava/lang/String;
    goto :goto_0
.end method

.method private static readFromEmailAccount(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 380
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "emailAddress"

    aput-object v1, v2, v4

    .line 382
    .local v2, "projection":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 385
    .local v6, "c":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 387
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "_id ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 388
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 389
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 391
    .local v8, "email":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 396
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "email":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 397
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    if-eqz v6, :cond_1

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 404
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v9

    .line 399
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    if-eqz v6, :cond_1

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 398
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 399
    if-eqz v6, :cond_3

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_3
    throw v1
.end method

.method private static updateMedicalInformation(Landroid/content/Context;JLandroid/content/ContentValues;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawContactId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 464
    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 465
    const-string/jumbo v4, "data"

    .line 464
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 467
    .local v0, "profileDataUri":Landroid/net/Uri;
    const-string/jumbo v2, "mimetype=? AND raw_contact_id=?"

    .line 468
    .local v2, "where":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 469
    const-string/jumbo v3, "vnd.android.cursor.item/vnd.sonymobile.android.medical_info"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 472
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, p3, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static declared-synchronized updateOrInsertMedicalInformation(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const-class v3, Lcom/sonyericsson/android/socialphonebook/LocalProfile;

    monitor-enter v3

    .line 485
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->getRawContactId(Landroid/content/Context;)J

    move-result-wide v0

    .line 488
    .local v0, "rawContactId":J
    invoke-static {p0, v0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->updateMedicalInformation(Landroid/content/Context;JLandroid/content/ContentValues;)I

    move-result v2

    if-nez v2, :cond_0

    .line 489
    invoke-static {p0, v0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->insertMedicalInformation(Landroid/content/Context;JLandroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 484
    return-void

    .end local v0    # "rawContactId":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
