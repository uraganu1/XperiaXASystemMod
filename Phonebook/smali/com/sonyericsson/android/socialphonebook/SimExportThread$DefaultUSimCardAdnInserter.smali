.class Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;
.super Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;
.source "SimExportThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultUSimCardAdnInserter"
.end annotation


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final SECONDNUMBER:Ljava/lang/String; = "secondNumber"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "subscription"    # I

    .prologue
    .line 675
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    .line 674
    return-void
.end method

.method private isTooLongNumber(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;II)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "helper"    # Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .param p3, "availablePbr"    # I
    .param p4, "flag"    # I

    .prologue
    .line 806
    if-eqz p1, :cond_0

    .line 807
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->getNumberLength(Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;II)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 808
    const/4 v0, 0x1

    return v0

    .line 811
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private prepareOperationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "aContactName"    # Ljava/lang/String;
    .param p2, "aPhoneNumber"    # Ljava/lang/String;
    .param p3, "aSecondPhoneNumber"    # Ljava/lang/String;
    .param p4, "aAddress"    # Ljava/lang/String;
    .param p5, "simSourceId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 746
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 747
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    .line 750
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 752
    .local v1, "rawContactIndex":I
    const/4 v0, 0x0

    .line 754
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz p5, :cond_1

    .line 755
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 756
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v2, "account_name"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 757
    const-string/jumbo v2, "account_type"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 758
    const-string/jumbo v2, "sourceid"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 759
    const-string/jumbo v2, "aggregation_mode"

    .line 760
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 759
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 761
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    if-eqz p1, :cond_2

    .line 765
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 766
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v2, "raw_contact_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 767
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 768
    const-string/jumbo v2, "data2"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 769
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 774
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 775
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v2, "raw_contact_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 776
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 777
    const-string/jumbo v2, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 778
    const-string/jumbo v2, "data1"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 779
    const-string/jumbo v2, "is_primary"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 780
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 784
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 785
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v2, "raw_contact_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 786
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 787
    const-string/jumbo v2, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 788
    const-string/jumbo v2, "data1"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 789
    const-string/jumbo v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 790
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 794
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 795
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v2, "raw_contact_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 796
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 797
    const-string/jumbo v2, "data2"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 798
    const-string/jumbo v2, "data1"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 799
    const-string/jumbo v2, "is_primary"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 800
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    return-void
.end method


# virtual methods
.method public insertAdn(Landroid/os/Bundle;I)Z
    .locals 16
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "availablePbr"    # I

    .prologue
    .line 686
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, "number":Ljava/lang/String;
    const-string/jumbo v2, "secondNumber"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 689
    .local v5, "secondNumber":Ljava/lang/String;
    const-string/jumbo v2, "address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 691
    .local v6, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mSub:I

    const/4 v12, 0x0

    invoke-static {v2, v12, v7}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getInstance(Landroid/content/Context;ZI)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-result-object v9

    .line 692
    .local v9, "helper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v3, v9, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->convertTooLongName(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;I)Ljava/lang/String;

    move-result-object v3

    .line 694
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->trimIncompleteSurrogatePairs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->checkNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 697
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v9, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->isTooLongNumber(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    const/4 v2, 0x0

    return v2

    .line 702
    :cond_0
    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->checkNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 704
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 706
    .local v8, "cv":Landroid/content/ContentValues;
    if-eqz v3, :cond_1

    .line 707
    const-string/jumbo v2, "tag"

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 711
    const-string/jumbo v2, "number"

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 718
    const/4 v2, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v9, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->isTooLongNumber(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 722
    :cond_3
    :goto_0
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getEmailRemainCapacity(I)I

    move-result v2

    if-gtz v2, :cond_4

    .line 723
    const/4 v6, 0x0

    .line 725
    .end local v6    # "address":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "emails"

    invoke-virtual {v8, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string/jumbo v2, "aas"

    const-string/jumbo v7, ""

    invoke-virtual {v8, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string/jumbo v2, "sne"

    const-string/jumbo v7, ""

    invoke-virtual {v8, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mSub:I

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSimUri(I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 731
    .local v10, "insertedUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 733
    .local v11, "ret":Z
    if-eqz v10, :cond_5

    .line 734
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-ltz v2, :cond_7

    const/4 v11, 0x1

    .line 735
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->mContainAdnAccount:Z

    if-eqz v2, :cond_5

    if-eqz v11, :cond_5

    .line 737
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    .line 736
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultUSimCardAdnInserter;->prepareOperationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_5
    return v11

    .line 719
    .end local v10    # "insertedUri":Landroid/net/Uri;
    .end local v11    # "ret":Z
    .restart local v6    # "address":Ljava/lang/String;
    :cond_6
    const-string/jumbo v2, "anr"

    invoke-virtual {v8, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    .end local v6    # "address":Ljava/lang/String;
    .restart local v10    # "insertedUri":Landroid/net/Uri;
    .restart local v11    # "ret":Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_1
.end method
