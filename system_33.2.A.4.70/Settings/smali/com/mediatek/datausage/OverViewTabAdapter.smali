.class public Lcom/mediatek/datausage/OverViewTabAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "OverViewTabAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSavingSwitch:Landroid/widget/Switch;

.field private mDataSavingView:Landroid/view/View;

.field private mDataSavingZone:Landroid/widget/LinearLayout;

.field private mGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLimitBytes:[J

.field private mMobilePos:I

.field private mMobileTotal:[J

.field private mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

.field public mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

.field private mSimNum:I

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSublist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiPos:I

.field private mWifiToday:J

.field private mWifiTotal:J

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private stateListener:Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;


# direct methods
.method private calcMobileProgress(JJ)I
    .locals 9
    .param p1, "totalUsage"    # J
    .param p3, "limitUsage"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 221
    const-string/jumbo v3, "OverViewTabAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "calcMobileProgress() totalUsage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " limitUsage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-wide/16 v0, 0x0

    .line 224
    .local v0, "per":D
    cmp-long v3, p3, v6

    if-gez v3, :cond_2

    .line 225
    cmp-long v3, p1, v6

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    int-to-double v0, v3

    .line 233
    :goto_1
    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-lez v3, :cond_0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v0, v4

    if-gez v3, :cond_0

    .line 234
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    .line 236
    :cond_0
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    double-to-int v2, v4

    .line 237
    .local v2, "value":I
    const-string/jumbo v3, "OverViewTabAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "calcMobileProgress value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return v2

    .line 225
    .end local v2    # "value":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 226
    :cond_2
    cmp-long v3, p1, p3

    if-gtz v3, :cond_3

    .line 227
    long-to-double v4, p1

    long-to-double v6, p3

    div-double v0, v4, v6

    .line 228
    const-string/jumbo v3, "OverViewTabAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "limitUsage >=  totalUsage  per = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 230
    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 231
    const-string/jumbo v3, "OverViewTabAdapter"

    const-string/jumbo v4, "limitUsage < totalUsage ,so set per = 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private calcWifiTodayProgress(JJ)I
    .locals 9
    .param p1, "todayUsage"    # J
    .param p3, "totalUsage"    # J

    .prologue
    .line 200
    const-string/jumbo v3, "OverViewTabAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "calcWifiTodayProgress() todayUsage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " totalUsage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-wide/16 v0, 0x0

    .line 203
    .local v0, "per":D
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    .line 204
    const-wide/16 v0, 0x0

    .line 211
    :cond_0
    :goto_0
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    double-to-int v2, v4

    .line 212
    .local v2, "value":I
    const-string/jumbo v3, "OverViewTabAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "calcWifiTodayProgress() value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v2

    .line 206
    .end local v2    # "value":I
    :cond_1
    long-to-double v4, p1

    long-to-double v6, p3

    div-double v0, v4, v6

    .line 207
    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-lez v3, :cond_0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v0, v4

    if-gez v3, :cond_0

    .line 208
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    goto :goto_0
.end method

.method private calcWifiTotalProgress(J)I
    .locals 3
    .param p1, "todayUsage"    # J

    .prologue
    .line 217
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private getMobileData()V
    .locals 32

    .prologue
    .line 242
    const-string/jumbo v5, "OverViewTabAdapter"

    const-string/jumbo v12, "getMobileData()"

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    if-nez v5, :cond_0

    .line 244
    return-void

    .line 246
    :cond_0
    new-instance v13, Lcom/android/settings/net/ChartData;

    invoke-direct {v13}, Lcom/android/settings/net/ChartData;-><init>()V

    .line 247
    .local v13, "data":Lcom/android/settings/net/ChartData;
    const/4 v4, 0x0

    .line 251
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "subInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/SubscriptionInfo;

    .line 252
    .local v23, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 253
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    .line 252
    invoke-virtual {v5, v12}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v25

    .line 254
    .local v25, "subscriberId":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v26

    .line 257
    .local v26, "template":Landroid/net/NetworkTemplate;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 258
    const/16 v12, 0xa

    .line 257
    move-object/from16 v0, v26

    invoke-interface {v5, v0, v12}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v13, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    .line 259
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v28

    aput-wide v28, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    iget-object v5, v13, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v20

    .line 269
    .local v20, "historyStart":J
    iget-object v5, v13, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v18

    .line 270
    .local v18, "historyEnd":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 271
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v22

    .line 272
    .local v22, "policy":Landroid/net/NetworkPolicy;
    move-wide/from16 v14, v18

    .line 273
    .local v14, "cycleEnd":J
    move-wide/from16 v8, v18

    .line 274
    .local v8, "cycleEndBak":J
    move-wide/from16 v6, v20

    .line 275
    .local v6, "cycleStart":J
    if-eqz v22, :cond_4

    .line 277
    move-wide/from16 v0, v18

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v14

    .line 279
    :goto_1
    cmp-long v5, v14, v20

    if-lez v5, :cond_1

    .line 280
    move-object/from16 v0, v22

    invoke-static {v14, v15, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 281
    cmp-long v5, v6, v10

    if-gtz v5, :cond_2

    cmp-long v5, v10, v14

    if-gtz v5, :cond_2

    .line 282
    const-string/jumbo v5, "OverViewTabAdapter"

    const-string/jumbo v12, "cycleStart <= now && now <= cycleEnd"

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    :goto_2
    const-string/jumbo v5, "OverViewTabAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "cycleEndBak="

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v27, "cycleStart="

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/16 v17, 0x0

    .line 305
    .local v17, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-object v5, v13, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v17

    .line 306
    .local v17, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v28, v0

    .line 307
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v30, v0

    .line 306
    add-long v28, v28, v30

    :goto_3
    aput-wide v28, v5, v4

    .line 308
    const-string/jumbo v5, "OverViewTabAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "mMobileTotal["

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v27, "]="

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v27, v0

    aget-wide v28, v27, v4

    .line 308
    move-wide/from16 v0, v28

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 309
    const-string/jumbo v27, "mLimitBytes"

    .line 308
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 309
    const-string/jumbo v27, "["

    .line 308
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 310
    const-string/jumbo v27, "]="

    .line 308
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v27, v0

    aget-wide v28, v27, v4

    .line 308
    move-wide/from16 v0, v28

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 261
    .end local v6    # "cycleStart":J
    .end local v8    # "cycleEndBak":J
    .end local v10    # "now":J
    .end local v14    # "cycleEnd":J
    .end local v17    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v18    # "historyEnd":J
    .end local v20    # "historyStart":J
    .end local v22    # "policy":Landroid/net/NetworkPolicy;
    :catch_0
    move-exception v16

    .line 263
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    const-wide/16 v28, -0x2

    aput-wide v28, v5, v4

    .line 264
    add-int/lit8 v4, v4, 0x1

    .line 265
    goto/16 :goto_0

    .line 287
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v6    # "cycleStart":J
    .restart local v8    # "cycleEndBak":J
    .restart local v10    # "now":J
    .restart local v14    # "cycleEnd":J
    .restart local v18    # "historyEnd":J
    .restart local v20    # "historyStart":J
    .restart local v22    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    move-wide v8, v14

    .line 288
    move-wide v14, v6

    goto/16 :goto_1

    .line 298
    :cond_3
    move-wide v8, v14

    .line 299
    move-wide v14, v6

    .line 293
    :cond_4
    cmp-long v5, v14, v20

    if-lez v5, :cond_1

    .line 294
    const-wide v28, 0x90321000L

    sub-long v6, v14, v28

    .line 295
    cmp-long v5, v6, v10

    if-gtz v5, :cond_3

    cmp-long v5, v10, v14

    if-gtz v5, :cond_3

    goto/16 :goto_2

    .line 307
    .restart local v17    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_5
    const-wide/16 v28, 0x0

    goto/16 :goto_3

    .line 241
    .end local v6    # "cycleStart":J
    .end local v8    # "cycleEndBak":J
    .end local v10    # "now":J
    .end local v14    # "cycleEnd":J
    .end local v17    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v18    # "historyEnd":J
    .end local v20    # "historyStart":J
    .end local v22    # "policy":Landroid/net/NetworkPolicy;
    .end local v23    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v25    # "subscriberId":Ljava/lang/String;
    .end local v26    # "template":Landroid/net/NetworkTemplate;
    :cond_6
    return-void
.end method

.method private getWifiData()V
    .locals 28

    .prologue
    .line 160
    const-string/jumbo v3, "OverViewTabAdapter"

    const-string/jumbo v10, "getWifiData()"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v2, Lcom/android/settings/net/ChartData;

    invoke-direct {v2}, Lcom/android/settings/net/ChartData;-><init>()V

    .line 163
    .local v2, "data":Lcom/android/settings/net/ChartData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 164
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v10

    const/16 v11, 0xa

    .line 163
    invoke-interface {v3, v10, v11}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    const/16 v22, 0x0

    .line 170
    .local v22, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-object v3, v2, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v26

    .line 171
    .local v26, "historyStart":J
    iget-object v3, v2, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v24

    .line 172
    .local v24, "historyEnd":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 173
    .local v8, "now":J
    const-string/jumbo v3, "OverViewTabAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "historyStart = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v26

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " historyEnd = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v24

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " now = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    cmp-long v3, v24, v8

    if-lez v3, :cond_1

    move-wide/from16 v20, v24

    .line 176
    .local v20, "cycleEnd":J
    :goto_1
    move-wide/from16 v6, v20

    .line 177
    .local v6, "cycleEndBak":J
    move-wide/from16 v4, v26

    .line 178
    .local v4, "cycleStart":J
    :goto_2
    cmp-long v3, v20, v26

    if-lez v3, :cond_0

    .line 180
    const-wide v10, 0x90321000L

    sub-long v4, v20, v10

    .line 181
    cmp-long v3, v4, v8

    if-gtz v3, :cond_2

    cmp-long v3, v8, v20

    if-gtz v3, :cond_2

    .line 183
    const-string/jumbo v3, "OverViewTabAdapter"

    const-string/jumbo v10, "cycleStart <= now && now <= cycleEnd"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-object v3, v2, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v22

    .line 191
    .local v22, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-string/jumbo v3, "OverViewTabAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "cycleStart = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " cycleEndBak = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-eqz v22, :cond_3

    move-object/from16 v0, v22

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v22

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v10, v12

    :goto_3
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    .line 193
    iget-object v11, v2, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getUtcDateMillis()J

    move-result-wide v12

    const/16 v18, 0x0

    move-wide v14, v8

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v22

    .line 194
    if-eqz v22, :cond_4

    move-object/from16 v0, v22

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v22

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v10, v12

    :goto_4
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiToday:J

    .line 195
    const-string/jumbo v3, "OverViewTabAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mWifiTotal = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " mWifiToday = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 196
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiToday:J

    .line 195
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 166
    .end local v4    # "cycleStart":J
    .end local v6    # "cycleEndBak":J
    .end local v8    # "now":J
    .end local v20    # "cycleEnd":J
    .end local v22    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v24    # "historyEnd":J
    .end local v26    # "historyStart":J
    :catch_0
    move-exception v19

    .line 167
    .local v19, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "OverViewTabAdapter"

    const-string/jumbo v10, "Remote Exception happens"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v8    # "now":J
    .local v22, "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v24    # "historyEnd":J
    .restart local v26    # "historyStart":J
    :cond_1
    move-wide/from16 v20, v8

    .restart local v20    # "cycleEnd":J
    goto/16 :goto_1

    .line 186
    .restart local v4    # "cycleStart":J
    .restart local v6    # "cycleEndBak":J
    :cond_2
    move-wide/from16 v6, v20

    .line 187
    move-wide/from16 v20, v4

    goto/16 :goto_2

    .line 192
    .local v22, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_3
    const-wide/16 v10, 0x0

    goto :goto_3

    .line 194
    :cond_4
    const-wide/16 v10, 0x0

    goto :goto_4
.end method

.method private inflateLockScreenView(Landroid/view/LayoutInflater;)V
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v3, 0x1

    .line 581
    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingZone:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 582
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingSwitch:Landroid/widget/Switch;

    .line 584
    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingZone:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingSwitch:Landroid/widget/Switch;

    .line 583
    invoke-static {p1, v4, v5}, Lcom/mediatek/datausage/OverViewTabAdapter;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingView:Landroid/view/View;

    .line 585
    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    .line 586
    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 588
    const/4 v1, 0x0

    .line 591
    .local v1, "state":I
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 592
    const-string/jumbo v5, "data_saving_key"

    .line 590
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 594
    const-string/jumbo v4, "OverViewTabAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get state from provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingSwitch:Landroid/widget/Switch;

    if-ne v1, v3, :cond_1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 602
    iget-object v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/mediatek/datausage/OverViewTabAdapter$4;

    invoke-direct {v4, p0}, Lcom/mediatek/datausage/OverViewTabAdapter$4;-><init>(Lcom/mediatek/datausage/OverViewTabAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 620
    iget-object v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingView:Landroid/view/View;

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 621
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x7f0b0114

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 622
    iget-object v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingZone:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 623
    iget-object v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingView:Landroid/view/View;

    new-instance v4, Lcom/mediatek/datausage/OverViewTabAdapter$5;

    invoke-direct {v4, p0}, Lcom/mediatek/datausage/OverViewTabAdapter$5;-><init>(Lcom/mediatek/datausage/OverViewTabAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    .end local v1    # "state":I
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 595
    .restart local v1    # "state":I
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .line 597
    const-string/jumbo v4, "OverViewTabAdapter"

    const-string/jumbo v5, "Get data from provider failure"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 643
    const v2, 0x7f0400a0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 645
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    .line 644
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 646
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 354
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 363
    const/16 v17, 0x0

    .line 365
    .local v17, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiPos:I

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 368
    .local v9, "inflate":Landroid/view/LayoutInflater;
    const v18, 0x7f040055

    const/16 v19, 0x0

    .line 367
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 369
    .local v17, "view":Landroid/view/View;
    const v18, 0x7f13008e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 370
    .local v13, "textTitle":Landroid/widget/TextView;
    const v18, 0x7f130090

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 371
    .local v14, "textUsage":Landroid/widget/TextView;
    const v18, 0x7f13008f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    .line 372
    .local v10, "progress":Landroid/widget/ProgressBar;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getWifiData()V

    .line 373
    if-nez p2, :cond_1

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 375
    const v19, 0x7f0b010f

    .line 374
    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiToday:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    .line 377
    .local v16, "usage":Ljava/lang/String;
    const-string/jumbo v18, "OverViewTabAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "childPosition="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " and usage= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiToday:J

    move-wide/from16 v18, v0

    .line 381
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    move-wide/from16 v20, v0

    .line 380
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/datausage/OverViewTabAdapter;->calcWifiTodayProgress(JJ)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 481
    .end local v9    # "inflate":Landroid/view/LayoutInflater;
    .end local v10    # "progress":Landroid/widget/ProgressBar;
    .end local v13    # "textTitle":Landroid/widget/TextView;
    .end local v14    # "textUsage":Landroid/widget/TextView;
    .end local v16    # "usage":Ljava/lang/String;
    .end local v17    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v17

    .line 383
    .restart local v9    # "inflate":Landroid/view/LayoutInflater;
    .restart local v10    # "progress":Landroid/widget/ProgressBar;
    .restart local v13    # "textTitle":Landroid/widget/TextView;
    .restart local v14    # "textUsage":Landroid/widget/TextView;
    .restart local v17    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 384
    const v19, 0x7f0b0110

    .line 383
    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    .line 386
    .restart local v16    # "usage":Ljava/lang/String;
    const-string/jumbo v18, "OverViewTabAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "childPosition = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " and usage= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/mediatek/datausage/OverViewTabAdapter;->calcWifiTotalProgress(J)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 391
    .end local v9    # "inflate":Landroid/view/LayoutInflater;
    .end local v10    # "progress":Landroid/widget/ProgressBar;
    .end local v13    # "textTitle":Landroid/widget/TextView;
    .end local v14    # "textUsage":Landroid/widget/TextView;
    .end local v16    # "usage":Ljava/lang/String;
    .local v17, "view":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobilePos:I

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 393
    .restart local v9    # "inflate":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/datausage/OverViewTabAdapter;->getChildrenCount(I)I

    move-result v6

    .line 394
    .local v6, "childCount":I
    const-string/jumbo v18, "OverViewTabAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "childCount: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", mSimSum: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3

    add-int/lit8 v18, v6, -0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 397
    const v18, 0x7f040046

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 398
    .local v17, "view":Landroid/view/View;
    const v18, 0x7f13007a

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingZone:Landroid/widget/LinearLayout;

    .line 399
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/datausage/OverViewTabAdapter;->inflateLockScreenView(Landroid/view/LayoutInflater;)V

    goto/16 :goto_0

    .line 401
    .local v17, "view":Landroid/view/View;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getMobileData()V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 404
    const v19, 0x107000a

    .line 403
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    .line 405
    .local v15, "tintArr":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v12

    .line 406
    .local v12, "simColor":I
    invoke-static {v15}, Ljava/util/Arrays;->sort([I)V

    .line 407
    invoke-static {v15, v12}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    .line 408
    .local v8, "index":I
    const-string/jumbo v18, "OverViewTabAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "usage : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, p2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " limit : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, p2

    .line 408
    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 409
    const-string/jumbo v20, ", index: "

    .line 408
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/16 v18, 0x0

    array-length v0, v15

    move/from16 v19, v0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    aget v7, v15, v18

    .line 411
    .local v7, "i":I
    const-string/jumbo v20, "OverViewTabAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "i: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 413
    .end local v7    # "i":I
    :cond_4
    const-string/jumbo v18, "OverViewTabAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ",simColor: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, p2

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_5

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, p2

    cmp-long v18, v18, v20

    if-lez v18, :cond_5

    .line 416
    const/4 v8, 0x5

    .line 418
    :cond_5
    packed-switch v8, :pswitch_data_0

    .line 445
    const v18, 0x7f040054

    const/16 v19, 0x0

    .line 444
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 448
    .local v17, "view":Landroid/view/View;
    :goto_2
    const v18, 0x7f13008b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 449
    .restart local v13    # "textTitle":Landroid/widget/TextView;
    const v18, 0x7f13008d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 450
    .restart local v14    # "textUsage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v11

    .line 451
    .local v11, "progressBarColor":I
    const v18, 0x7f13008c

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    .line 452
    .restart local v10    # "progress":Landroid/widget/ProgressBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, p2

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-lez v18, :cond_7

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, p2

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_6

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, p2

    cmp-long v18, v18, v20

    if-lez v18, :cond_6

    .line 457
    const-string/jumbo v18, "OverViewTabAdapter"

    const-string/jumbo v19, "Usage bytes is bigger than the limit bytes , show warning"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, p2

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v21, v0

    aget-wide v24, v21, p2

    .line 461
    sub-long v22, v22, v24

    .line 460
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    .line 459
    const v20, 0x7f0b0113

    .line 458
    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, p2

    .line 475
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/datausage/OverViewTabAdapter;->calcMobileProgress(JJ)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 421
    .end local v10    # "progress":Landroid/widget/ProgressBar;
    .end local v11    # "progressBarColor":I
    .end local v13    # "textTitle":Landroid/widget/TextView;
    .end local v14    # "textUsage":Landroid/widget/TextView;
    .local v17, "view":Landroid/view/View;
    :pswitch_0
    const v18, 0x7f040054

    const/16 v19, 0x0

    .line 420
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .local v17, "view":Landroid/view/View;
    goto/16 :goto_2

    .line 425
    .local v17, "view":Landroid/view/View;
    :pswitch_1
    const v18, 0x7f04004f

    const/16 v19, 0x0

    .line 424
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .local v17, "view":Landroid/view/View;
    goto/16 :goto_2

    .line 429
    .local v17, "view":Landroid/view/View;
    :pswitch_2
    const v18, 0x7f040050

    const/16 v19, 0x0

    .line 428
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .local v17, "view":Landroid/view/View;
    goto/16 :goto_2

    .line 433
    .local v17, "view":Landroid/view/View;
    :pswitch_3
    const v18, 0x7f040052

    const/16 v19, 0x0

    .line 432
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .local v17, "view":Landroid/view/View;
    goto/16 :goto_2

    .line 437
    .local v17, "view":Landroid/view/View;
    :pswitch_4
    const v18, 0x7f040051

    const/16 v19, 0x0

    .line 436
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .local v17, "view":Landroid/view/View;
    goto/16 :goto_2

    .line 441
    .local v17, "view":Landroid/view/View;
    :pswitch_5
    const v18, 0x7f040053

    const/16 v19, 0x0

    .line 440
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .local v17, "view":Landroid/view/View;
    goto/16 :goto_2

    .line 464
    .restart local v10    # "progress":Landroid/widget/ProgressBar;
    .restart local v11    # "progressBarColor":I
    .restart local v13    # "textTitle":Landroid/widget/TextView;
    .restart local v14    # "textUsage":Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, p2

    .line 466
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, p2

    .line 468
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    .line 465
    const v20, 0x7f0b0112

    .line 464
    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 472
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v19, v0

    aget-wide v20, v19, p2

    .line 472
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 486
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiPos:I

    if-ne p1, v0, :cond_0

    .line 487
    const/4 v0, 0x2

    return v0

    .line 488
    :cond_0
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobilePos:I

    if-ne p1, v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.opera.max.loader"

    invoke-static {v0, v1}, Lcom/mediatek/settings/UtilsExt;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    const-string/jumbo v0, "OverViewTabAdapter"

    const-string/jumbo v1, "add Data Saving item"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 493
    :cond_1
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    return v0

    .line 496
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 502
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 514
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 521
    if-eqz p3, :cond_0

    instance-of v2, p3, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v1, p3

    .line 525
    check-cast v1, Landroid/widget/TextView;

    .line 527
    .local v1, "item":Landroid/widget/TextView;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    return-object v1

    .line 522
    .end local v1    # "item":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 523
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v2, 0x7f040085

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "item":Landroid/widget/TextView;
    goto :goto_0
.end method

.method public getUtcDateMillis()J
    .locals 12

    .prologue
    .line 550
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v9, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 551
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 553
    .local v7, "date":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x4

    invoke-virtual {v7, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 552
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 556
    .local v1, "year":I
    const/4 v2, 0x4

    const/4 v4, 0x6

    invoke-virtual {v7, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 555
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 559
    .local v8, "month":I
    const/4 v2, 0x6

    const/16 v4, 0x8

    invoke-virtual {v7, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 560
    .local v3, "day":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 561
    .local v0, "gc":Ljava/util/Calendar;
    add-int/lit8 v2, v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 562
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    return-wide v4
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public unbindOperaMaxLoader()V
    .locals 3

    .prologue
    .line 703
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    if-eqz v1, :cond_0

    .line 704
    const-string/jumbo v1, "OverViewTabAdapter"

    const-string/jumbo v2, "unbindOperaMaxLoader"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->stateListener:Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;

    invoke-interface {v1, v2}, Lcom/mediatek/common/operamax/ILoaderService;->unregisterStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :goto_0
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 702
    :cond_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OverViewTabAdapter"

    const-string/jumbo v2, "unregisterStateListener error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
