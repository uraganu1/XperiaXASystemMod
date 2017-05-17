.class Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;
.super Landroid/os/AsyncTask;
.source "PickJoynContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadJoynContactsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final PROJECTION:[Ljava/lang/String;

.field private final mContactPhoneNumbers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreselectedNumbers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;Ljava/util/Set;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "preselectedNumbers":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->mContactPhoneNumbers:Ljava/util/Set;

    .line 232
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 233
    const-string/jumbo v1, "data1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 232
    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->PROJECTION:[Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->mPreselectedNumbers:Ljava/util/Set;

    .line 238
    return-void
.end method

.method private isPhoneNumberAdded(Ljava/lang/String;)Z
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 298
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatNumberToKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "formattedNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->mContactPhoneNumbers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    const/4 v2, 0x1

    return v2

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->mContactPhoneNumbers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sonyericsson/conversations/contact/NotAPhoneNumberException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 303
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonyericsson/conversations/contact/NotAPhoneNumberException;
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 243
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 27
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->PROJECTION:[Ljava/lang/String;

    .line 245
    const-string/jumbo v7, "display_name ASC"

    .line 244
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 246
    .local v20, "cursor":Landroid/database/Cursor;
    if-nez v20, :cond_0

    .line 247
    const/4 v2, 0x0

    return-object v2

    .line 249
    :cond_0
    const-string/jumbo v2, "data1"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 250
    .local v23, "phoneNumberIndex":I
    const-string/jumbo v2, "data2"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 251
    .local v24, "phoneTypeIndex":I
    const-string/jumbo v2, "contact_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 252
    .local v18, "contactIdIndex":I
    const-string/jumbo v2, "display_name"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 254
    .local v19, "contactNameIndex":I
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v22

    .line 256
    .local v22, "imContactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    :cond_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->mPreselectedNumbers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "preselectedNumber$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 283
    .local v25, "preselectedNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :try_start_1
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/sonymobile/jms/contact/ImContactApi;->getImContactDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;)Ljava/lang/String;

    move-result-object v16

    .line 284
    .local v16, "displayName":Ljava/lang/String;
    if-nez v16, :cond_3

    .line 285
    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v16

    .line 287
    :cond_3
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    new-instance v11, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v14, -0x1

    const/4 v13, -0x1

    .line 288
    const/16 v17, 0x1

    .line 287
    invoke-direct/range {v11 .. v17}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;-><init>(Ljava/lang/String;IJLjava/lang/String;Z)V

    const/4 v3, 0x0

    aput-object v11, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/contact/ImContactNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 289
    .end local v16    # "displayName":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 290
    .local v21, "e":Lcom/sonymobile/jms/contact/ImContactNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception while getting ImContactDisplayName with number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 256
    .end local v21    # "e":Lcom/sonymobile/jms/contact/ImContactNotFoundException;
    .end local v25    # "preselectedNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v26    # "preselectedNumber$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 257
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "phoneNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->isPhoneNumberAdded(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 264
    .local v5, "phoneType":I
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 265
    .local v10, "contactId":I
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, "contactName":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    invoke-static {v4}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lcom/sonymobile/jms/contact/ImContactApi;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v2

    .line 268
    if-eqz v2, :cond_1

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->mPreselectedNumbers:Ljava/util/Set;

    .line 271
    invoke-static {v4}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v3

    .line 270
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 272
    .local v9, "isPreselected":Z
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    new-instance v3, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    int-to-long v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;-><init>(Ljava/lang/String;IJLjava/lang/String;Z)V

    const/4 v6, 0x0

    aput-object v3, v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 276
    .end local v4    # "phoneNumber":Ljava/lang/String;
    .end local v5    # "phoneType":I
    .end local v8    # "contactName":Ljava/lang/String;
    .end local v9    # "isPreselected":Z
    .end local v10    # "contactId":I
    :catchall_0
    move-exception v2

    .line 277
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 276
    throw v2

    .line 293
    .restart local v26    # "preselectedNumber$iterator":Ljava/util/Iterator;
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method protected varargs onProgressUpdate([Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V
    .locals 2
    .param p1, "values"    # [Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->-get0(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->-get2(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->this$0:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->-get0(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->addAll([Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    .line 309
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 309
    check-cast p1, [Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .end local p1    # "values":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->onProgressUpdate([Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V

    return-void
.end method
