.class Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawContactDeltaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/common/model/RawContactDelta;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 2132
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;)I
    .locals 22
    .param p1, "one"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "two"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    .line 2139
    invoke-virtual/range {p1 .. p2}, Lcom/android/contacts/common/model/RawContactDelta;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2140
    const/16 v17, 0x0

    return v17

    .line 2143
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/editor/ContactEditorFragment;->-get5(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v4

    .line 2144
    .local v4, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v17

    const-string/jumbo v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2145
    .local v2, "accountType1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v17

    const-string/jumbo v18, "data_set"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2146
    .local v5, "dataSet1":Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v14

    .line 2147
    .local v14, "type1":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v17

    const-string/jumbo v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2148
    .local v3, "accountType2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v17

    const-string/jumbo v18, "data_set"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2149
    .local v6, "dataSet2":Ljava/lang/String;
    invoke-virtual {v4, v3, v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v15

    .line 2152
    .local v15, "type2":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v14}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v15}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2153
    const/16 v17, 0x1

    return v17

    .line 2154
    :cond_1
    invoke-virtual {v14}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v15}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2159
    :cond_2
    const/4 v11, 0x0

    .line 2160
    .local v11, "skipAccountTypeCheck":Z
    instance-of v7, v14, Lcom/android/contacts/common/model/account/GoogleAccountType;

    .line 2161
    .local v7, "isGoogleAccount1":Z
    instance-of v8, v15, Lcom/android/contacts/common/model/account/GoogleAccountType;

    .line 2162
    .local v8, "isGoogleAccount2":Z
    if-eqz v7, :cond_3

    if-eqz v8, :cond_5

    .line 2164
    :cond_3
    if-nez v7, :cond_6

    if-eqz v8, :cond_6

    .line 2165
    const/16 v17, 0x1

    return v17

    .line 2155
    .end local v7    # "isGoogleAccount1":Z
    .end local v8    # "isGoogleAccount2":Z
    .end local v11    # "skipAccountTypeCheck":Z
    :cond_4
    const/16 v17, -0x1

    return v17

    .line 2163
    .restart local v7    # "isGoogleAccount1":Z
    .restart local v8    # "isGoogleAccount2":Z
    .restart local v11    # "skipAccountTypeCheck":Z
    :cond_5
    const/16 v17, -0x1

    return v17

    .line 2166
    :cond_6
    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    .line 2167
    const/4 v11, 0x1

    .line 2171
    :cond_7
    if-nez v11, :cond_d

    .line 2172
    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    .line 2173
    const/16 v17, 0x1

    return v17

    .line 2174
    :cond_8
    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 2175
    const/16 v17, -0x1

    return v17

    .line 2178
    :cond_9
    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    .line 2180
    .local v16, "value":I
    if-eqz v16, :cond_a

    .line 2181
    return v16

    .line 2184
    :cond_a
    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 2185
    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    .line 2186
    if-eqz v16, :cond_d

    .line 2187
    return v16

    .line 2189
    :cond_b
    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 2190
    const/16 v17, -0x1

    return v17

    .line 2191
    :cond_c
    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 2192
    const/16 v17, 0x1

    return v17

    .line 2198
    .end local v16    # "value":I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v9

    .line 2199
    .local v9, "oneAccount":Ljava/lang/String;
    if-nez v9, :cond_e

    const-string/jumbo v9, ""

    .line 2200
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v12

    .line 2201
    .local v12, "twoAccount":Ljava/lang/String;
    if-nez v12, :cond_f

    const-string/jumbo v12, ""

    .line 2202
    :cond_f
    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    .line 2203
    .restart local v16    # "value":I
    if-eqz v16, :cond_10

    .line 2204
    return v16

    .line 2208
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v10

    .line 2209
    .local v10, "oneId":Ljava/lang/Long;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v13

    .line 2210
    .local v13, "twoId":Ljava/lang/Long;
    if-nez v10, :cond_11

    .line 2211
    const/16 v17, -0x1

    return v17

    .line 2212
    :cond_11
    if-nez v13, :cond_12

    .line 2213
    const/16 v17, 0x1

    return v17

    .line 2216
    :cond_12
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    return v17
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "one"    # Ljava/lang/Object;
    .param p2, "two"    # Ljava/lang/Object;

    .prologue
    .line 2137
    check-cast p1, Lcom/android/contacts/common/model/RawContactDelta;

    .end local p1    # "one":Ljava/lang/Object;
    check-cast p2, Lcom/android/contacts/common/model/RawContactDelta;

    .end local p2    # "two":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;->compare(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;)I

    move-result v0

    return v0
.end method
