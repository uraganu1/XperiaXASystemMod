.class public Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;
.super Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;
.source "SimExportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;,
        Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;,
        Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportListAdapter;,
        Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;
    }
.end annotation


# static fields
.field private static final GOT_SIM_SIZE:I = 0x3

.field private static final LOADING_SIM:I = 0x0

.field static final RAW_ENTITIES_PROJECTION:[Ljava/lang/String;

.field private static final READING_SIM_SIZE_DIALOG:I = 0x2

.field protected static final TAG:Ljava/lang/String;

.field private static final WAITING_FOR_SIM_SIZE:I = 0x1


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContactPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsSimSizeReady:Z

.field private mLoadSimDialog:Landroid/app/ProgressDialog;

.field private mSimSize:I

.field private mSubscription:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mContactPhoneMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mIsSimSizeReady:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSimSize:I

    return v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSubscription:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mIsSimSizeReady:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSimSize:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->onDismissLoadDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->startNewQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->startSubQuery()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const-class v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    .line 80
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 81
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "mimetype"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "is_super_primary"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "is_primary"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "data1"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "data2"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "data1"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 80
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->RAW_ENTITIES_PROJECTION:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSimSize:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSubscription:I

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mContactPhoneMap:Ljava/util/HashMap;

    .line 760
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method private clearAlertDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 871
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 875
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 870
    :cond_1
    return-void
.end method

.method private getAvailableEntryCount()I
    .locals 8

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->getCheckedIds()Ljava/util/ArrayList;

    move-result-object v5

    .line 821
    .local v5, "markedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 823
    .local v3, "count":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "contactId$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 824
    .local v0, "contactId":J
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mContactPhoneMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;

    .line 825
    .local v4, "entry":Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;
    if-nez v4, :cond_0

    .line 826
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 830
    .end local v0    # "contactId":J
    .end local v4    # "entry":Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;
    :cond_1
    return v3
.end method

.method private getSelectCursor()Landroid/os/Bundle;
    .locals 19

    .prologue
    .line 621
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "getSelectCursor start."

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 623
    .local v5, "bundleArray":Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/os/Bundle;->clear()V

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->getCheckedIds()Ljava/util/ArrayList;

    move-result-object v11

    .line 625
    .local v11, "mMarkedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 627
    .local v9, "count":I
    sget-boolean v16, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v16, :cond_0

    .line 628
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " count: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_0
    if-nez v9, :cond_1

    .line 631
    return-object v5

    .line 634
    :cond_1
    const/4 v3, 0x0

    .line 635
    .local v3, "bdlCnt":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "contactId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 636
    .local v6, "contactId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mContactPhoneMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;

    .line 637
    .local v10, "entry":Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;
    if-nez v10, :cond_2

    .line 638
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "missing cid:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_2
    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 643
    .local v12, "name":Ljava/lang/String;
    if-nez v12, :cond_3

    .line 644
    const-string/jumbo v12, ""

    .line 648
    :cond_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 649
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    .line 654
    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->getType()I

    move-result v16

    packed-switch v16, :pswitch_data_0

    .line 672
    const-string/jumbo v15, "/O"

    .line 676
    .local v15, "type":Ljava/lang/String;
    :goto_1
    const-string/jumbo v16, "tag"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string/jumbo v16, "type"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->getNumbder()Ljava/lang/String;

    move-result-object v14

    .line 679
    .local v14, "str":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->getSecondNumber()Ljava/lang/String;

    move-result-object v13

    .line 680
    .local v13, "secondNumber":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, "address":Ljava/lang/String;
    const-string/jumbo v16, "number"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string/jumbo v16, "secondNumber"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string/jumbo v16, "address"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-boolean v16, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v16, :cond_4

    .line 686
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " name:["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "] type:["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "] num:["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 687
    const-string/jumbo v18, " secondNumber:["

    .line 686
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 687
    const-string/jumbo v18, "]"

    .line 686
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 688
    const-string/jumbo v18, " address:["

    .line 686
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 688
    const-string/jumbo v18, "]"

    .line 686
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 688
    const-string/jumbo v18, " contactid:["

    .line 686
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 688
    const-string/jumbo v18, "]"

    .line 686
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 691
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 657
    .end local v2    # "address":Ljava/lang/String;
    .end local v13    # "secondNumber":Ljava/lang/String;
    .end local v14    # "str":Ljava/lang/String;
    .end local v15    # "type":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v15, "/H"

    .restart local v15    # "type":Ljava/lang/String;
    goto/16 :goto_1

    .line 662
    .end local v15    # "type":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v15, "/M"

    .restart local v15    # "type":Ljava/lang/String;
    goto/16 :goto_1

    .line 667
    .end local v15    # "type":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v15, "/W"

    .restart local v15    # "type":Ljava/lang/String;
    goto/16 :goto_1

    .line 693
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v6    # "contactId":J
    .end local v10    # "entry":Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "type":Ljava/lang/String;
    :cond_5
    return-object v5

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onDismissLoadDialog()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mLoadSimDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mLoadSimDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mLoadSimDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 861
    :cond_0
    return-void
.end method

.method private startNewQuery(Ljava/lang/String;)V
    .locals 10
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 524
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startNewQuery"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .local v9, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "account_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string/jumbo v0, " NOT IN (SELECT _id FROM "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string/jumbo v0, "accounts"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string/jumbo v0, " WHERE "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string/jumbo v0, "account_type"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string/jumbo v0, " IN (\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string/jumbo v0, "com.sonyericsson.sdncontacts"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string/jumbo v0, "\',\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string/jumbo v0, "com.sonyericsson.adncontacts"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string/jumbo v0, "\',\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string/jumbo v0, "com.sonyericsson.adnsub1contacts"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string/jumbo v0, "\',\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string/jumbo v0, "com.sonyericsson.adnsub2contacts"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string/jumbo v0, "\'))"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string/jumbo v0, " AND is_restricted=0"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string/jumbo v0, " AND ((mimetype=\'vnd.android.cursor.item/name\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string/jumbo v0, " AND data1 NOT NULL)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSubscription:I

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getIccType(I)I

    move-result v8

    .line 547
    .local v8, "iccType":I
    const/4 v0, 0x1

    if-eq v8, v0, :cond_0

    const/4 v0, 0x3

    if-ne v8, v0, :cond_1

    .line 548
    :cond_0
    const-string/jumbo v0, " OR (mimetype = \'vnd.android.cursor.item/email_v2\') "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_1
    const-string/jumbo v0, " OR mimetype = \'vnd.android.cursor.item/phone_v2\')"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string/jumbo v0, " AND deleted=0"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 554
    .local v5, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    .line 557
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 558
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->RAW_ENTITIES_PROJECTION:[Ljava/lang/String;

    .line 561
    const-string/jumbo v7, "contact_id ASC, data_id DESC"

    .line 555
    const/16 v1, 0x1400

    move-object v6, v2

    .line 554
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method private startSubQuery()V
    .locals 2

    .prologue
    .line 570
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSubQuery"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->startQuery()V

    .line 569
    return-void
.end method


# virtual methods
.method protected createQueryHandler()Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;
    .locals 1

    .prologue
    .line 566
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V

    return-object v0
.end method

.method protected getAdapter()Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;
    .locals 1

    .prologue
    .line 580
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportListAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->getAdapter()Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;

    move-result-object v0

    return-object v0
.end method

.method protected final getDoneBtnLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0902d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "aSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 489
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 490
    const v0, 0x7f0902df

    const v1, 0x7f0902d4

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->setTitle(II)V

    .line 492
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "subscription"

    .line 493
    const/4 v2, -0x1

    .line 492
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSubscription:I

    .line 494
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 488
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 835
    packed-switch p1, :pswitch_data_0

    .line 858
    const/4 v1, 0x0

    return-object v1

    .line 838
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$3;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)V

    .line 850
    .local v0, "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mLoadSimDialog:Landroid/app/ProgressDialog;

    .line 851
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mLoadSimDialog:Landroid/app/ProgressDialog;

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSubscription:I

    invoke-static {p0, v2}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getSimCardLoading(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 852
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mLoadSimDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 853
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mLoadSimDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 854
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mLoadSimDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 855
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mLoadSimDialog:Landroid/app/ProgressDialog;

    return-object v1

    .line 835
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 2

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->getAdapter()Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->changeCursor(Landroid/database/Cursor;)V

    .line 611
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->onDestroy()V

    .line 612
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->clearAlertDialog()V

    .line 613
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy start."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method protected final onDoneBtnClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 708
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSubscription:I

    invoke-static {p0, v3}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->checkSIM(Landroid/content/Context;I)I

    move-result v0

    .line 710
    .local v0, "checkSimResult":I
    if-eq v0, v4, :cond_0

    .line 711
    const/4 v1, 0x0

    .line 713
    .local v1, "msg":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 718
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSubscription:I

    invoke-static {p0, v3}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getSimCardNotAvailable(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "msg":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 723
    return-void

    .line 715
    .local v1, "msg":Ljava/lang/String;
    :pswitch_0
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSubscription:I

    invoke-static {p0, v3}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getSimCardNotInserted(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "msg":Ljava/lang/String;
    goto :goto_0

    .line 726
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mIsSimSizeReady:Z

    .line 727
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)V

    .line 757
    .local v2, "simReadThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 707
    return-void

    .line 713
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 2

    .prologue
    .line 588
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->onResume()V

    .line 589
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume start."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method protected final onStop()V
    .locals 2

    .prologue
    .line 597
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->onStop()V

    .line 598
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop start."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 602
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 596
    return-void
.end method

.method protected startQuery()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 502
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startQuery"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 505
    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 508
    .local v4, "Projection":[Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 509
    .local v8, "contactsUri":Landroid/net/Uri$Builder;
    const-string/jumbo v0, "requesting_package"

    const-string/jumbo v1, ""

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 510
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .local v9, "limitation":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "in_visible_group = 1 "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    .line 516
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 518
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 514
    const/16 v1, 0x1401

    move-object v6, v2

    move-object v7, v2

    .line 513
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method protected startSimExport()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 792
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->getAvailableEntryCount()I

    move-result v4

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSimSize:I

    if-gt v4, v5, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->getSelectCursor()Landroid/os/Bundle;

    move-result-object v0

    .line 794
    .local v0, "bundleArray":Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    .local v2, "exportIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.sonyericsson.android.socialphonebook.intent.extra.CONTACTS_BUNDLE"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 796
    const-string/jumbo v4, "subscription"

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSubscription:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 797
    const-class v4, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 800
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->finish()V

    .line 791
    .end local v0    # "bundleArray":Landroid/os/Bundle;
    .end local v2    # "exportIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 801
    .restart local v0    # "bundleArray":Landroid/os/Bundle;
    .restart local v2    # "exportIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 802
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start SimExportActivity failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->finish()V

    goto :goto_0

    .line 803
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 804
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->finish()V

    .line 803
    throw v4

    .line 808
    .end local v0    # "bundleArray":Landroid/os/Bundle;
    .end local v2    # "exportIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 809
    const v5, 0x7f0902d5

    .line 808
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 807
    new-array v5, v8, [Ljava/lang/Object;

    .line 809
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mSimSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 807
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, "msgInfo":Ljava/lang/String;
    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
