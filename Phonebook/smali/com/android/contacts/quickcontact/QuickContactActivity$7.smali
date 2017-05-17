.class final Lcom/android/contacts/quickcontact/QuickContactActivity$7;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/common/model/dataitem/DataItem;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhsList"    # Ljava/lang/Object;
    .param p2, "rhsList"    # Ljava/lang/Object;

    .prologue
    .line 706
    check-cast p1, Ljava/util/List;

    .end local p1    # "lhsList":Ljava/lang/Object;
    check-cast p2, Ljava/util/List;

    .end local p2    # "rhsList":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->compare(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/List;Ljava/util/List;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, "lhsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    .local p2, "rhsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 708
    .local v4, "lhs":Lcom/android/contacts/common/model/dataitem/DataItem;
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 709
    .local v11, "rhs":Lcom/android/contacts/common/model/dataitem/DataItem;
    invoke-virtual {v4}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v17

    if-nez v17, :cond_0

    const/4 v8, 0x0

    .line 710
    .local v8, "lhsTimesUsed":I
    :goto_0
    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v17

    if-nez v17, :cond_1

    const/4 v15, 0x0

    .line 711
    .local v15, "rhsTimesUsed":I
    :goto_1
    sub-int v16, v15, v8

    .line 712
    .local v16, "timesUsedDifference":I
    if-eqz v16, :cond_2

    .line 713
    return v16

    .line 709
    .end local v8    # "lhsTimesUsed":I
    .end local v15    # "rhsTimesUsed":I
    .end local v16    # "timesUsedDifference":I
    :cond_0
    invoke-virtual {v4}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .restart local v8    # "lhsTimesUsed":I
    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .restart local v15    # "rhsTimesUsed":I
    goto :goto_1

    .line 717
    .restart local v16    # "timesUsedDifference":I
    :cond_2
    invoke-virtual {v4}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v17

    if-nez v17, :cond_3

    const-wide/16 v6, 0x0

    .line 719
    .local v6, "lhsLastTimeUsed":J
    :goto_2
    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v17

    if-nez v17, :cond_4

    const-wide/16 v12, 0x0

    .line 720
    .local v12, "rhsLastTimeUsed":J
    :goto_3
    sub-long v2, v12, v6

    .line 721
    .local v2, "lastTimeUsedDifference":J
    const-wide/16 v18, 0x0

    cmp-long v17, v2, v18

    if-lez v17, :cond_5

    .line 722
    const/16 v17, 0x1

    return v17

    .line 717
    .end local v2    # "lastTimeUsedDifference":J
    .end local v6    # "lhsLastTimeUsed":J
    .end local v12    # "rhsLastTimeUsed":J
    :cond_3
    invoke-virtual {v4}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .restart local v6    # "lhsLastTimeUsed":J
    goto :goto_2

    .line 719
    :cond_4
    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .restart local v12    # "rhsLastTimeUsed":J
    goto :goto_3

    .line 723
    .restart local v2    # "lastTimeUsedDifference":J
    :cond_5
    const-wide/16 v18, 0x0

    cmp-long v17, v2, v18

    if-gez v17, :cond_6

    .line 724
    const/16 v17, -0x1

    return v17

    .line 728
    :cond_6
    invoke-virtual {v4}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 729
    .local v5, "lhsMimeType":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v14

    .line 730
    .local v14, "rhsMimeType":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get0()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "mimeType$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 731
    .local v9, "mimeType":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 732
    const/16 v17, -0x1

    return v17

    .line 733
    :cond_8
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 734
    const/16 v17, 0x1

    return v17

    .line 737
    .end local v9    # "mimeType":Ljava/lang/String;
    :cond_9
    const/16 v17, 0x0

    return v17
.end method
