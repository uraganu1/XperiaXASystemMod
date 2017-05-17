.class public Lcom/android/common/OperationScheduler;
.super Ljava/lang/Object;
.source "OperationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/OperationScheduler$Options;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "OperationScheduler_"


# instance fields
.field private final mStorage:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "storage"    # Landroid/content/SharedPreferences;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    .line 82
    return-void
.end method

.method private getTimeBefore(Ljava/lang/String;J)J
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "max"    # J

    .prologue
    .line 228
    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v2, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 229
    .local v0, "time":J
    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    .line 230
    move-wide v0, p2

    .line 231
    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 233
    :cond_0
    return-wide v0
.end method

.method public static parseOptions(Ljava/lang/String;Lcom/android/common/OperationScheduler$Options;)Lcom/android/common/OperationScheduler$Options;
    .locals 11
    .param p0, "spec"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/android/common/OperationScheduler$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 108
    const-string/jumbo v2, " +"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_9

    aget-object v0, v4, v2

    .line 109
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 108
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const-string/jumbo v6, "backoff="

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 111
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\\+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "pieces":[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad value for backoff: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_2
    array-length v6, v1

    if-lez v6, :cond_3

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 116
    aget-object v6, v1, v3

    invoke-static {v6}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 118
    :cond_3
    array-length v6, v1

    if-le v6, v8, :cond_4

    aget-object v6, v1, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 119
    aget-object v6, v1, v8

    invoke-static {v6}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    .line 121
    :cond_4
    array-length v6, v1

    if-le v6, v9, :cond_0

    aget-object v6, v1, v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 122
    aget-object v6, v1, v9

    invoke-static {v6}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p1, Lcom/android/common/OperationScheduler$Options;->backoffExponentialMillis:I

    goto :goto_1

    .line 124
    .end local v1    # "pieces":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "max="

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 125
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    goto/16 :goto_1

    .line 126
    :cond_6
    const-string/jumbo v6, "min="

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 127
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    goto/16 :goto_1

    .line 128
    :cond_7
    const-string/jumbo v6, "period="

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 129
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    goto/16 :goto_1

    .line 131
    :cond_8
    invoke-static {v0}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    goto/16 :goto_1

    .line 134
    .end local v0    # "param":Ljava/lang/String;
    :cond_9
    return-object p1
.end method

.method private static parseSeconds(Ljava/lang/String;)J
    .locals 2
    .param p0, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method protected currentTimeMillis()J
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAttemptTimeMillis()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 214
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "OperationScheduler_lastSuccessTimeMillis"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 215
    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "OperationScheduler_lastErrorTimeMillis"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 213
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSuccessTimeMillis()J
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "OperationScheduler_lastSuccessTimeMillis"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J
    .locals 30
    .param p1, "options"    # Lcom/android/common/OperationScheduler$Options;

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string/jumbo v25, "OperationScheduler_enabledState"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 152
    .local v6, "enabledState":Z
    if-nez v6, :cond_0

    const-wide v24, 0x7fffffffffffffffL

    return-wide v24

    .line 154
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string/jumbo v25, "OperationScheduler_permanentError"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 155
    .local v18, "permanentError":Z
    if-eqz v18, :cond_1

    const-wide v24, 0x7fffffffffffffffL

    return-wide v24

    .line 161
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string/jumbo v25, "OperationScheduler_errorCount"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 162
    .local v7, "errorCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v16

    .line 163
    .local v16, "now":J
    const-string/jumbo v24, "OperationScheduler_lastSuccessTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v10

    .line 164
    .local v10, "lastSuccessTimeMillis":J
    const-string/jumbo v24, "OperationScheduler_lastErrorTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v8

    .line 165
    .local v8, "lastErrorTimeMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string/jumbo v25, "OperationScheduler_triggerTimeMillis"

    const-wide v26, 0x7fffffffffffffffL

    invoke-interface/range {v24 .. v27}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 166
    .local v22, "triggerTimeMillis":J
    const-string/jumbo v24, "OperationScheduler_moratoriumSetTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v12

    .line 167
    .local v12, "moratoriumSetMillis":J
    const-string/jumbo v24, "OperationScheduler_moratoriumTimeMillis"

    .line 168
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    move-wide/from16 v26, v0

    add-long v26, v26, v12

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v14

    .line 170
    .local v14, "moratoriumTimeMillis":J
    move-wide/from16 v20, v22

    .line 171
    .local v20, "time":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_2

    .line 172
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    move-wide/from16 v24, v0

    add-long v24, v24, v10

    move-wide/from16 v0, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 175
    :cond_2
    move-wide/from16 v0, v20

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 176
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    move-wide/from16 v24, v0

    add-long v24, v24, v10

    move-wide/from16 v0, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 177
    if-lez v7, :cond_5

    .line 178
    add-int/lit8 v19, v7, -0x1

    .line 181
    .local v19, "shift":I
    const/16 v24, 0x1e

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    const/16 v19, 0x1e

    .line 182
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    move-wide/from16 v24, v0

    .line 183
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    move-wide/from16 v26, v0

    int-to-long v0, v7

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    .line 182
    add-long v24, v24, v26

    .line 184
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/common/OperationScheduler$Options;->backoffExponentialMillis:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    shl-long v26, v26, v19

    .line 182
    add-long v4, v24, v26

    .line 188
    .local v4, "backoff":J
    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-lez v24, :cond_4

    cmp-long v24, v4, v14

    if-lez v24, :cond_4

    .line 189
    move-wide v4, v14

    .line 192
    :cond_4
    add-long v24, v8, v4

    move-wide/from16 v0, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 194
    .end local v4    # "backoff":J
    .end local v19    # "shift":I
    :cond_5
    return-wide v20
.end method

.method public onPermanentError()V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "OperationScheduler_permanentError"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 341
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 303
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->resetPermanentError()V

    .line 304
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 305
    const-string/jumbo v1, "OperationScheduler_errorCount"

    .line 304
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    const-string/jumbo v1, "OperationScheduler_lastErrorTimeMillis"

    .line 304
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 307
    const-string/jumbo v1, "OperationScheduler_permanentError"

    .line 304
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 308
    const-string/jumbo v1, "OperationScheduler_triggerTimeMillis"

    .line 304
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    const-string/jumbo v1, "OperationScheduler_lastSuccessTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    .line 304
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 301
    return-void
.end method

.method public onTransientError()V
    .locals 5

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 319
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "OperationScheduler_lastErrorTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 320
    const-string/jumbo v1, "OperationScheduler_errorCount"

    .line 321
    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "OperationScheduler_errorCount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 320
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 322
    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 317
    return-void
.end method

.method public resetPermanentError()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "OperationScheduler_permanentError"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 349
    return-void
.end method

.method public resetTransientError()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "OperationScheduler_errorCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 331
    return-void
.end method

.method public setEnabledState(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "OperationScheduler_enabledState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 292
    return-void
.end method

.method public setMoratoriumTimeHttp(Ljava/lang/String;)Z
    .locals 9
    .param p1, "retryAfter"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 272
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v2, v4, v6

    .line 273
    .local v2, "ms":J
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    return v8

    .line 275
    .end local v2    # "ms":J
    :catch_0
    move-exception v1

    .line 277
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {p1}, Lcom/android/common/LegacyHttpDateTime;->parse(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    return v8

    .line 279
    :catch_1
    move-exception v0

    .line 280
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    return v4
.end method

.method public setMoratoriumTimeMillis(J)V
    .locals 5
    .param p1, "millis"    # J

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    const-string/jumbo v1, "OperationScheduler_moratoriumTimeMillis"

    .line 257
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    const-string/jumbo v1, "OperationScheduler_moratoriumSetTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    .line 257
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 256
    return-void
.end method

.method public setTriggerTimeMillis(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 244
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[OperationScheduler:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .local v4, "out":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/TreeMap;

    iget-object v7, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 359
    .local v0, "copy":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "e$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 360
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 361
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v7, "OperationScheduler_"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 362
    const-string/jumbo v7, "TimeMillis"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 363
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 364
    .local v5, "time":Landroid/text/format/Time;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 365
    const-string/jumbo v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "OperationScheduler_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0xa

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string/jumbo v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%Y-%m-%d/%H:%M:%S"

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 368
    .end local v5    # "time":Landroid/text/format/Time;
    :cond_1
    const-string/jumbo v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "OperationScheduler_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 370
    .local v6, "v":Ljava/lang/Object;
    if-nez v6, :cond_2

    .line 371
    const-string/jumbo v7, "=(null)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 373
    :cond_2
    const-string/jumbo v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 378
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "v":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
