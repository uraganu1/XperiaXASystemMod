.class public Lcom/sonyericsson/conversations/ui/SendContactHelper;
.super Ljava/lang/Object;
.source "SendContactHelper.java"


# static fields
.field private static final PROJECTION_CONTACT_MMS:[Ljava/lang/String;

.field private static final PROJECTION_CONTACT_SMS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "mimetype"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "data2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "data4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "data5"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 50
    sput-object v0, Lcom/sonyericsson/conversations/ui/SendContactHelper;->PROJECTION_CONTACT_SMS:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "lookup"

    aput-object v1, v0, v3

    .line 54
    sput-object v0, Lcom/sonyericsson/conversations/ui/SendContactHelper;->PROJECTION_CONTACT_MMS:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/StringBuilder;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "subLabel"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 628
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 630
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_2
    if-eqz p1, :cond_4

    .line 634
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    if-eqz p2, :cond_3

    .line 636
    const-string/jumbo v0, " - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_3
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :cond_4
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "info"    # Ljava/lang/StringBuilder;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "subLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 602
    const-string/jumbo v3, ""

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 603
    const-string/jumbo v3, "\r\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    :cond_0
    if-eqz p1, :cond_2

    .line 606
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    if-eqz p2, :cond_1

    .line 608
    const-string/jumbo v3, " - "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_1
    const-string/jumbo v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string/jumbo v3, "\r\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .local v0, "sbValues":Ljava/lang/StringBuilder;
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 616
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 617
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 621
    .end local v1    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 599
    .end local v0    # "sbValues":Ljava/lang/StringBuilder;
    .end local v2    # "value$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method private static compose(Landroid/content/Context;Ljava/io/OutputStream;[J)Z
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "contactIds"    # [J

    .prologue
    .line 758
    const/16 v20, 0x0

    .line 759
    .local v20, "result":Z
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v3, v0

    if-gtz v3, :cond_1

    .line 760
    :cond_0
    return v20

    .line 763
    :cond_1
    const/4 v10, 0x0

    .line 765
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .local v21, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const-string/jumbo v3, " IN ("

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    const-wide/16 v22, 0x0

    .line 770
    .local v22, "selfContactId":J
    const/16 v16, 0x0

    .line 771
    .local v16, "isSelfPicked":Z
    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-wide v14, p2, v3

    .line 772
    .local v14, "id":J
    if-nez v16, :cond_2

    invoke-static {v14, v15}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 773
    const/16 v16, 0x1

    .line 774
    move-wide/from16 v22, v14

    .line 776
    :cond_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 777
    const-string/jumbo v5, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 779
    .end local v14    # "id":J
    :cond_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 780
    const-string/jumbo v3, ")"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 783
    .local v9, "contactsUri":Landroid/net/Uri$Builder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 784
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v3, 0x400

    new-array v8, v3, [B

    .line 786
    .local v8, "buff":[B
    if-eqz v16, :cond_4

    .line 787
    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v25

    .line 789
    .local v25, "selfVcardUri":Landroid/net/Uri$Builder;
    const-string/jumbo v3, "request_header"

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 790
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v24

    .line 791
    .local v24, "selfInputsStream":Ljava/io/InputStream;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v8, v0, v1}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->copyStream([BLjava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v3

    if-lez v3, :cond_4

    .line 792
    const/16 v20, 0x1

    .line 796
    .end local v24    # "selfInputsStream":Ljava/io/InputStream;
    .end local v25    # "selfVcardUri":Landroid/net/Uri$Builder;
    :cond_4
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/conversations/ui/SendContactHelper;->PROJECTION_CONTACT_MMS:[Ljava/lang/String;

    .line 797
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 796
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 799
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_8

    .line 800
    const-string/jumbo v3, "lookup"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 801
    .local v17, "lookupClmn":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .local v18, "lookupKeys":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 804
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-interface {v10}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-nez v3, :cond_6

    .line 806
    const-string/jumbo v3, ":"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 823
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "buff":[B
    .end local v9    # "contactsUri":Landroid/net/Uri$Builder;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v16    # "isSelfPicked":Z
    .end local v17    # "lookupClmn":I
    .end local v18    # "lookupKeys":Ljava/lang/StringBuilder;
    .end local v21    # "selection":Ljava/lang/StringBuilder;
    .end local v22    # "selfContactId":J
    :catch_0
    move-exception v11

    .line 824
    .local v11, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    if-eqz v10, :cond_5

    .line 829
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 832
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    :goto_2
    return v20

    .line 809
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "buff":[B
    .restart local v9    # "contactsUri":Landroid/net/Uri$Builder;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "isSelfPicked":Z
    .restart local v17    # "lookupClmn":I
    .restart local v18    # "lookupKeys":Ljava/lang/StringBuilder;
    .restart local v21    # "selection":Ljava/lang/StringBuilder;
    .restart local v22    # "selfContactId":J
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/proxy/ProxyService;->getContactsContractProxy()Lcom/sonymobile/conversations/proxy/IContactsContractProxy;

    move-result-object v19

    .line 811
    .local v19, "proxy":Lcom/sonymobile/conversations/proxy/IContactsContractProxy;
    invoke-interface/range {v19 .. v19}, Lcom/sonymobile/conversations/proxy/IContactsContractProxy;->getContentMultiVCardUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v26

    .line 812
    .local v26, "vcardUri":Landroid/net/Uri$Builder;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 813
    const-string/jumbo v3, "vcard_type"

    const-string/jumbo v4, "default"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 814
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 815
    .local v13, "is":Ljava/io/InputStream;
    move-object/from16 v0, p1

    invoke-static {v8, v13, v0}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->copyStream([BLjava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v3

    if-lez v3, :cond_7

    .line 816
    const/16 v20, 0x1

    .line 819
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 825
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "buff":[B
    .end local v9    # "contactsUri":Landroid/net/Uri$Builder;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v16    # "isSelfPicked":Z
    .end local v17    # "lookupClmn":I
    .end local v18    # "lookupKeys":Ljava/lang/StringBuilder;
    .end local v19    # "proxy":Lcom/sonymobile/conversations/proxy/IContactsContractProxy;
    .end local v21    # "selection":Ljava/lang/StringBuilder;
    .end local v22    # "selfContactId":J
    .end local v26    # "vcardUri":Landroid/net/Uri$Builder;
    :catch_1
    move-exception v12

    .line 826
    .local v12, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 828
    if-eqz v10, :cond_5

    .line 829
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 828
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "buff":[B
    .restart local v9    # "contactsUri":Landroid/net/Uri$Builder;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "isSelfPicked":Z
    .restart local v21    # "selection":Ljava/lang/StringBuilder;
    .restart local v22    # "selfContactId":J
    :cond_8
    if-eqz v10, :cond_5

    .line 829
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 827
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "buff":[B
    .end local v9    # "contactsUri":Landroid/net/Uri$Builder;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v16    # "isSelfPicked":Z
    .end local v21    # "selection":Ljava/lang/StringBuilder;
    .end local v22    # "selfContactId":J
    :catchall_0
    move-exception v3

    .line 828
    if-eqz v10, :cond_9

    .line 829
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 827
    :cond_9
    throw v3
.end method

.method private static composeVcard(Landroid/content/Context;[JLjava/lang/StringBuilder;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactIds"    # [J
    .param p2, "vcardPath"    # Ljava/lang/StringBuilder;

    .prologue
    .line 677
    const/4 v4, 0x0

    .line 679
    .local v4, "result":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 680
    const-string/jumbo v8, "/System/PIM/"

    .line 679
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, "fileDirectory":Ljava/lang/String;
    const/4 v6, 0x0

    .line 683
    .local v6, "targetDirectoryOk":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 684
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 685
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 686
    const/4 v6, 0x1

    .line 695
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    .line 696
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "send_contacts.vcf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 701
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 702
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_1

    .line 703
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "File:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "delete error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 709
    :cond_1
    invoke-static {p0, v3, p1}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->encodeVCard(Landroid/content/Context;Ljava/lang/String;[J)Z

    move-result v5

    .line 710
    .local v5, "ret":Z
    if-eqz v5, :cond_3

    .line 711
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v5    # "ret":Z
    :goto_1
    return v4

    .line 690
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 691
    const/4 v6, 0x1

    goto :goto_0

    .line 713
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v5    # "ret":Z
    :cond_3
    const v4, 0x7f0b01c4

    goto :goto_1

    .line 717
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v5    # "ret":Z
    :cond_4
    const v4, 0x7f0b01c3

    goto :goto_1
.end method

.method private static copyStream([BLjava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 3
    .param p0, "buff"    # [B
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, "copiedLength":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 838
    :cond_0
    return v0

    .line 841
    :cond_1
    const/4 v1, 0x0

    .line 843
    .local v1, "sz":I
    :cond_2
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 844
    if-lez v1, :cond_3

    .line 845
    const/4 v2, 0x0

    invoke-virtual {p2, p0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 846
    add-int/2addr v0, v1

    .line 848
    :cond_3
    if-gtz v1, :cond_2

    .line 849
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 853
    return v0

    .line 850
    :catchall_0
    move-exception v2

    .line 851
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 850
    throw v2
.end method

.method private static encodeVCard(Landroid/content/Context;Ljava/lang/String;[J)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contactIds"    # [J

    .prologue
    .line 724
    const/4 v5, 0x0

    .line 725
    .local v5, "result":Z
    const/4 v3, 0x0

    .line 728
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {p0, v4, p2}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->compose(Landroid/content/Context;Ljava/io/OutputStream;[J)Z

    move-result v5

    .line 732
    .local v5, "result":Z
    if-nez v5, :cond_1

    .line 733
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 734
    .local v2, "exportingFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 735
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 736
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "exportingFile delete failed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 740
    .end local v2    # "exportingFile":Ljava/io/File;
    .end local v5    # "result":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .line 741
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 745
    if-eqz v3, :cond_0

    .line 747
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 754
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    return v5

    .line 745
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "result":Z
    :cond_1
    if-eqz v4, :cond_2

    .line 747
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    .line 748
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    .line 742
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    .local v5, "result":Z
    :catch_2
    move-exception v1

    .line 743
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "result":Z
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 745
    if-eqz v3, :cond_0

    .line 747
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 748
    :catch_3
    move-exception v1

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 744
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 745
    :goto_4
    if-eqz v3, :cond_3

    .line 747
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 744
    :cond_3
    :goto_5
    throw v6

    .line 748
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 744
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 740
    .local v3, "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "result":Z
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 742
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "result":Z
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method private static getContactInfo(Landroid/content/Context;Lcom/sonyericsson/conversations/model/SmsContact;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsContact"    # Lcom/sonyericsson/conversations/model/SmsContact;

    .prologue
    const v13, 0x7f0b01bb

    const v12, 0x7f0b01bd

    const v11, 0x7f0b01be

    const v10, 0x7f0b01bf

    const/4 v9, 0x0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v0, "contactInfo":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v9, v9, v7}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 360
    const v8, 0x7f0b01a4

    .line 359
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, "phoneLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 366
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneHomes()Ljava/util/ArrayList;

    move-result-object v8

    .line 361
    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 371
    const v8, 0x7f0b01bc

    .line 370
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 372
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneMobiles()Ljava/util/ArrayList;

    move-result-object v8

    .line 367
    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 378
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneWorks()Ljava/util/ArrayList;

    move-result-object v8

    .line 373
    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 383
    const v8, 0x7f0b01a5

    .line 382
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 384
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneWorkfaxs()Ljava/util/ArrayList;

    move-result-object v8

    .line 379
    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 389
    const v8, 0x7f0b01a6

    .line 388
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 390
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneHomefaxs()Ljava/util/ArrayList;

    move-result-object v8

    .line 385
    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 395
    const v8, 0x7f0b01a7

    .line 394
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 396
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhonePagers()Ljava/util/ArrayList;

    move-result-object v8

    .line 391
    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 402
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneOthers()Ljava/util/ArrayList;

    move-result-object v8

    .line 397
    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 408
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneCustoms()Ljava/util/ArrayList;

    move-result-object v8

    .line 403
    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 411
    const v8, 0x7f0b01a8

    .line 410
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "emailLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 417
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEmailHomes()Ljava/util/ArrayList;

    move-result-object v8

    .line 412
    invoke-static {v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 423
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEmailWorks()Ljava/util/ArrayList;

    move-result-object v8

    .line 418
    invoke-static {v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 429
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEmailOthers()Ljava/util/ArrayList;

    move-result-object v8

    .line 424
    invoke-static {v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 434
    const v8, 0x7f0b01bc

    .line 433
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 435
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEmailMobiles()Ljava/util/ArrayList;

    move-result-object v8

    .line 430
    invoke-static {v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 441
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEmailCustoms()Ljava/util/ArrayList;

    move-result-object v8

    .line 436
    invoke-static {v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 443
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 444
    const v8, 0x7f0b01a9

    .line 443
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "imLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 449
    const v8, 0x7f0b01aa

    .line 448
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 450
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImGoogletalks()Ljava/util/ArrayList;

    move-result-object v8

    .line 445
    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 455
    const v8, 0x7f0b01ab

    .line 454
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 456
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImAims()Ljava/util/ArrayList;

    move-result-object v8

    .line 451
    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 461
    const v8, 0x7f0b01ac

    .line 460
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 462
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImMsns()Ljava/util/ArrayList;

    move-result-object v8

    .line 457
    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 467
    const v8, 0x7f0b01ad

    .line 466
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 468
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImYahoos()Ljava/util/ArrayList;

    move-result-object v8

    .line 463
    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 473
    const v8, 0x7f0b01ae

    .line 472
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 474
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImSkypes()Ljava/util/ArrayList;

    move-result-object v8

    .line 469
    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 479
    const v8, 0x7f0b01af

    .line 478
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 480
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImQqs()Ljava/util/ArrayList;

    move-result-object v8

    .line 475
    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 484
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 485
    const v8, 0x7f0b01b0

    .line 484
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 486
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImIcqs()Ljava/util/ArrayList;

    move-result-object v8

    .line 481
    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 490
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 491
    const v8, 0x7f0b01b1

    .line 490
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 492
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImJabbers()Ljava/util/ArrayList;

    move-result-object v8

    .line 487
    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 498
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImCustoms()Ljava/util/ArrayList;

    move-result-object v8

    .line 493
    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 500
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 501
    const v8, 0x7f0b01b2

    .line 500
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 505
    .local v6, "structuredpostalLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 507
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPostalHomes()Ljava/util/ArrayList;

    move-result-object v8

    .line 502
    invoke-static {v0, v6, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 511
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 513
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPostalWorks()Ljava/util/ArrayList;

    move-result-object v8

    .line 508
    invoke-static {v0, v6, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 517
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 519
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPostalOthers()Ljava/util/ArrayList;

    move-result-object v8

    .line 514
    invoke-static {v0, v6, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 523
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 525
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPostalCustoms()Ljava/util/ArrayList;

    move-result-object v8

    .line 520
    invoke-static {v0, v6, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 527
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 528
    const v8, 0x7f0b01b3

    .line 527
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, "organizationLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 534
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getOrganizationWork()Ljava/lang/String;

    move-result-object v8

    .line 529
    invoke-static {v0, v4, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 540
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getOrganizationOther()Ljava/lang/String;

    move-result-object v8

    .line 535
    invoke-static {v0, v4, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 546
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getOrganizationCustom()Ljava/lang/String;

    move-result-object v8

    .line 541
    invoke-static {v0, v4, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 551
    const v8, 0x7f0b01b5

    .line 550
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 552
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getBirthday()Ljava/lang/String;

    move-result-object v8

    .line 548
    invoke-static {v0, v7, v9, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 556
    const v8, 0x7f0b01b6

    .line 555
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 557
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getAnniversarys()Ljava/util/ArrayList;

    move-result-object v8

    .line 553
    invoke-static {v0, v7, v9, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 560
    const v8, 0x7f0b01b4

    .line 559
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "eventLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 566
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEventOthers()Ljava/util/ArrayList;

    move-result-object v8

    .line 561
    invoke-static {v0, v2, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 570
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 572
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEventCustoms()Ljava/util/ArrayList;

    move-result-object v8

    .line 567
    invoke-static {v0, v2, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 576
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 577
    const v8, 0x7f0b01b7

    .line 576
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 578
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getNotes()Ljava/lang/String;

    move-result-object v8

    .line 574
    invoke-static {v0, v7, v9, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 582
    const v8, 0x7f0b01b8

    .line 581
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 583
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getNickname()Ljava/lang/String;

    move-result-object v8

    .line 579
    invoke-static {v0, v7, v9, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 587
    const v8, 0x7f0b01b9

    .line 586
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 588
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getWebsites()Ljava/util/ArrayList;

    move-result-object v8

    .line 584
    invoke-static {v0, v7, v9, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 592
    const v8, 0x7f0b01ba

    .line 591
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 593
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getInternetcall()Ljava/lang/String;

    move-result-object v8

    .line 589
    invoke-static {v0, v7, v9, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getContactsInfo(Landroid/content/Context;[JLjava/lang/StringBuilder;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactIds"    # [J
    .param p2, "contactsInfo"    # Ljava/lang/StringBuilder;

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->loadContact(Landroid/content/Context;[J)Ljava/util/ArrayList;

    move-result-object v3

    .line 83
    .local v3, "smsContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/SmsContact;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "smsContact$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/SmsContact;

    .line 84
    .local v1, "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->getContactInfo(Landroid/content/Context;Lcom/sonyericsson/conversations/model/SmsContact;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "contactInfo":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    const-string/jumbo v4, "\r\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 79
    .end local v0    # "contactInfo":Ljava/lang/String;
    .end local v1    # "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    :cond_1
    return-void
.end method

.method public static getVcardUri(Landroid/content/Context;[JIZ)Landroid/os/Bundle;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactIds"    # [J
    .param p2, "curMMSSize"    # I
    .param p3, "imFileTransferCapable"    # Z

    .prologue
    .line 648
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 649
    .local v2, "bundle":Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 650
    .local v12, "vCardUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 651
    .local v7, "result":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    .local v11, "vCardFilename":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->composeVcard(Landroid/content/Context;[JLjava/lang/StringBuilder;)I

    move-result v7

    .line 653
    if-nez v7, :cond_2

    .line 654
    new-instance v3, Ljava/io/File;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 655
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 657
    .local v10, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v13

    int-to-long v8, v13

    .line 658
    .local v8, "mmsMaxSize":J
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 660
    .local v4, "fileSize":J
    if-nez p3, :cond_0

    move/from16 v0, p2

    int-to-long v14, v0

    add-long/2addr v14, v4

    cmp-long v13, v14, v8

    if-gtz v13, :cond_3

    :cond_0
    const/4 v6, 0x1

    .line 661
    .local v6, "fileSizeOk":Z
    :goto_0
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/sonyericsson/conversations/util/VCardUtil;->isMultipleContactsVCard(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 662
    :cond_1
    const v7, 0x7f0b014e

    .line 671
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileSize":J
    .end local v6    # "fileSizeOk":Z
    .end local v8    # "mmsMaxSize":J
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v12    # "vCardUri":Landroid/net/Uri;
    :cond_2
    :goto_1
    const-string/jumbo v13, "sendContact_error_code"

    invoke-virtual {v2, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 672
    const-string/jumbo v13, "sendContact_vcard_uri"

    invoke-virtual {v2, v13, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 673
    return-object v2

    .line 660
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileSize":J
    .restart local v8    # "mmsMaxSize":J
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v12    # "vCardUri":Landroid/net/Uri;
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "fileSizeOk":Z
    goto :goto_0

    .line 664
    :cond_4
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10, v13}, Lcom/sonyericsson/conversations/util/VCardUtil;->createVCardFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v10

    .line 665
    if-eqz v10, :cond_2

    .line 666
    move-object v12, v10

    .local v12, "vCardUri":Landroid/net/Uri;
    goto :goto_1
.end method

.method private static loadContact(Landroid/content/Context;[J)Ljava/util/ArrayList;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/SmsContact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 94
    new-instance v13, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v13, "smsContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/SmsContact;>;"
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v8, p1, v2

    .line 96
    .local v8, "id":J
    new-instance v12, Lcom/sonyericsson/conversations/model/SmsContact;

    invoke-direct {v12}, Lcom/sonyericsson/conversations/model/SmsContact;-><init>()V

    .line 97
    .local v12, "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    invoke-virtual {v12, v8, v9}, Lcom/sonyericsson/conversations/model/SmsContact;->setContactId(J)V

    .line 98
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v8    # "id":J
    .end local v12    # "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v10, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "contact_id"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v2, " IN ("

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const/4 v7, 0x0

    .line 108
    .local v7, "isSelfPicked":Z
    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_2

    aget-wide v8, p1, v1

    .line 109
    .restart local v8    # "id":J
    if-nez v7, :cond_1

    invoke-static {v8, v9}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    const/4 v7, 0x1

    .line 112
    :cond_1
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v3, ","

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    .end local v8    # "id":J
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 116
    const-string/jumbo v1, ")"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/conversations/ui/SendContactHelper;->PROJECTION_CONTACT_SMS:[Ljava/lang/String;

    .line 118
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 119
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 121
    :try_start_0
    invoke-static {v6, v13}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->updateSmsContactListWithCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_3
    if-eqz v7, :cond_4

    .line 128
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "data"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 129
    sget-object v2, Lcom/sonyericsson/conversations/ui/SendContactHelper;->PROJECTION_CONTACT_SMS:[Ljava/lang/String;

    move-object v3, v4

    move-object v5, v4

    .line 128
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 131
    .local v11, "selfCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 133
    :try_start_1
    invoke-static {v11, v13}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->updateSmsContactListWithCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 140
    .end local v11    # "selfCursor":Landroid/database/Cursor;
    :cond_4
    return-object v13

    .line 122
    :catchall_0
    move-exception v1

    .line 123
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 122
    throw v1

    .line 134
    .restart local v11    # "selfCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    .line 135
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 134
    throw v1
.end method

.method private static updateSmsContactListWithCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 18
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/SmsContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "smsContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/SmsContact;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 146
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_0

    .line 147
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "mimeType":Ljava/lang/String;
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "data":Ljava/lang/String;
    const/16 v16, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 151
    .local v2, "contactId":J
    const/4 v15, 0x0

    .line 152
    .local v15, "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v15    # "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    .local v14, "sc$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/conversations/model/SmsContact;

    .line 153
    .local v13, "sc":Lcom/sonyericsson/conversations/model/SmsContact;
    invoke-virtual {v13}, Lcom/sonyericsson/conversations/model/SmsContact;->getContactId()J

    move-result-wide v16

    cmp-long v16, v2, v16

    if-nez v16, :cond_1

    .line 154
    move-object v15, v13

    .local v15, "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    goto :goto_1

    .line 157
    .end local v13    # "sc":Lcom/sonyericsson/conversations/model/SmsContact;
    .end local v15    # "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    :cond_2
    if-eqz v15, :cond_0

    .line 158
    const-string/jumbo v16, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 159
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_3
    const-string/jumbo v16, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 161
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 162
    .local v11, "phoneType":I
    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneCustoms(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneHomes(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneMobiles(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_3
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneWorks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :pswitch_4
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneWorkfaxs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :pswitch_5
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneHomefaxs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :pswitch_6
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhonePagers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :pswitch_7
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneOthers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    .end local v11    # "phoneType":I
    :cond_4
    const-string/jumbo v16, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 199
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 200
    .local v5, "emailType":I
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_0

    .line 218
    :pswitch_8
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addEmailCustoms(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :pswitch_9
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addEmailHomes(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :pswitch_a
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addEmailWorks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :pswitch_b
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addEmailOthers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :pswitch_c
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addEmailMobiles(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    .end local v5    # "emailType":I
    :cond_5
    const-string/jumbo v16, "vnd.android.cursor.item/im"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 225
    const/16 v16, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 226
    .local v7, "imType":I
    packed-switch v7, :pswitch_data_2

    goto/16 :goto_0

    .line 260
    :pswitch_d
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addImCustoms(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :pswitch_e
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addImGoogletalks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :pswitch_f
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addImAims(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :pswitch_10
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addImMsns(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 240
    :pswitch_11
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addImYahoos(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :pswitch_12
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addImSkypes(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :pswitch_13
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addImQqs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :pswitch_14
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addImIcqs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :pswitch_15
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addImJabbers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    .end local v7    # "imType":I
    :cond_6
    const-string/jumbo v16, "vnd.android.cursor.item/postal-address_v2"

    .line 266
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 268
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 269
    .local v12, "postalType":I
    packed-switch v12, :pswitch_data_3

    goto/16 :goto_0

    .line 283
    :pswitch_16
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addPostalCustoms(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :pswitch_17
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addPostalHomes(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :pswitch_18
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addPostalWorks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :pswitch_19
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addPostalOthers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    .end local v12    # "postalType":I
    :cond_7
    const-string/jumbo v16, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 291
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 293
    .local v10, "organizationType":I
    const/4 v8, 0x0

    .line 295
    .local v8, "jobTitle":Ljava/lang/String;
    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_8

    .line 296
    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 297
    .local v8, "jobTitle":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_9

    const-string/jumbo v16, ""

    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    .end local v8    # "jobTitle":Ljava/lang/String;
    :cond_8
    packed-switch v10, :pswitch_data_4

    goto/16 :goto_0

    .line 310
    :pswitch_1a
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->setOrganizationCustom(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 297
    .restart local v8    # "jobTitle":Ljava/lang/String;
    :cond_9
    const-string/jumbo v16, " "

    goto :goto_2

    .line 302
    .end local v8    # "jobTitle":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->setOrganizationWork(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :pswitch_1c
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->setOrganizationOther(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    .end local v10    # "organizationType":I
    :cond_a
    const-string/jumbo v16, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 318
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 319
    .local v6, "eventType":I
    packed-switch v6, :pswitch_data_5

    goto/16 :goto_0

    .line 333
    :pswitch_1d
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addEventCustoms(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :pswitch_1e
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->setBirthday(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :pswitch_1f
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addAnniversarys(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :pswitch_20
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addEventOthers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    .end local v6    # "eventType":I
    :cond_b
    const-string/jumbo v16, "vnd.android.cursor.item/note"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 341
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->setNotes(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    :cond_c
    const-string/jumbo v16, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 343
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->setNickname(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 344
    :cond_d
    const-string/jumbo v16, "vnd.android.cursor.item/website"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 345
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->addWebsites(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    :cond_e
    const-string/jumbo v16, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 347
    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/model/SmsContact;->setInternetcall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    .end local v2    # "contactId":J
    .end local v4    # "data":Ljava/lang/String;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v14    # "sc$iterator":Ljava/util/Iterator;
    :cond_f
    return-void

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 200
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 226
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_e
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 269
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 300
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 319
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1f
        :pswitch_20
        :pswitch_1e
    .end packed-switch
.end method
