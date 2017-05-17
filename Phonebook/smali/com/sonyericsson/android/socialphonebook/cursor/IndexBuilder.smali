.class public final Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
.super Ljava/lang/Object;
.source "IndexBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;,
        Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;,
        Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;,
        Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;,
        Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;,
        Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;,
        Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$1;
    }
.end annotation


# static fields
.field private static final KEY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IndexBuilder"

.field private static sIndexBuilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

.field private static sLocale:Ljava/util/Locale;

.field private static sScreenOrientation:I


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mElseSeparatorIndex:I

.field private final mIndexBoxLabels:[Ljava/lang/String;

.field private mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

.field private mSepPosList:[I

.field private final mSepPosListLock:Ljava/lang/Object;

.field private final mSortedByPhonetic:Z

.field private mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mElseSeparatorIndex:I

    return v0
.end method

.method static synthetic -wrap0(JJ)I
    .locals 2
    .param p0, "aVal1"    # J
    .param p2, "aVal2"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->sIndexBuilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 39
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->sLocale:Ljava/util/Locale;

    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->sScreenOrientation:I

    .line 60
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->KEY_COMPARATOR:Ljava/util/Comparator;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosListLock:Ljava/lang/Object;

    .line 112
    const-string/jumbo v7, "IndexBuilder"

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 116
    .local v2, "rs":Landroid/content/res/Resources;
    const v7, 0x7f090022

    .line 115
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->getCollator(Ljava/lang/String;)Ljava/text/Collator;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mCollator:Ljava/text/Collator;

    .line 117
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mCollator:Ljava/text/Collator;

    invoke-virtual {v7, v6}, Ljava/text/Collator;->setStrength(I)V

    .line 118
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mCollator:Ljava/text/Collator;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/text/Collator;->setDecomposition(I)V

    .line 120
    const v7, 0x7f0b0003

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSortedByPhonetic:Z

    .line 122
    const v7, 0x7f0c0001

    .line 121
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "sections":[Ljava/lang/String;
    const v7, 0x7f0c0002

    .line 123
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mIndexBoxLabels:[Ljava/lang/String;

    .line 125
    const v7, 0x7f0c000a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "ranges":[Ljava/lang/String;
    invoke-direct {p0, v4, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->init([Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mCollator:Ljava/text/Collator;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/text/Collator;->setStrength(I)V

    .line 131
    sget-boolean v7, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v7, :cond_2

    .line 132
    const-string/jumbo v7, "IndexBuilder"

    const-string/jumbo v8, "SectionTable"

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    if-eqz v7, :cond_0

    .line 134
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v5, v8, v7

    .line 135
    .local v5, "tables":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    const-string/jumbo v10, "IndexBuilder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " SeparatorIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSeparatorIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 136
    const-string/jumbo v12, ", mSeparatorLabel:"

    .line 135
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 136
    iget-object v12, v5, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSeparatorLabel:Ljava/lang/String;

    .line 135
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 137
    const-string/jumbo v12, ", mSectionIndex:"

    .line 135
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 137
    iget v12, v5, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSectionIndex:I

    .line 135
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 140
    .end local v5    # "tables":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    :cond_0
    const-string/jumbo v7, "IndexBuilder"

    const-string/jumbo v8, "CollationKeyIndex"

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    if-eqz v7, :cond_2

    .line 142
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v0, v7, v6

    .line 143
    .local v0, "keyIndexes":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;
    const/4 v3, 0x0

    .line 144
    .local v3, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-get4(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)Ljava/text/CollationKey;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 145
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-get4(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)Ljava/text/CollationKey;

    move-result-object v9

    invoke-virtual {v9}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "IndexBuilder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " mSeparatorIndex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 148
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-get3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)I

    move-result v11

    .line 147
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 149
    const-string/jumbo v11, ", CollationKey Source:"

    .line 147
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 150
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)Ljava/text/CollationKey;

    move-result-object v11

    invoke-virtual {v11}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v11

    .line 147
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 151
    const-string/jumbo v11, ", toCollationKey Source:"

    .line 147
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 157
    .end local v0    # "keyIndexes":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;
    :cond_2
    const-string/jumbo v6, "IndexBuilder"

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private static compare(JJ)I
    .locals 2
    .param p0, "aVal1"    # J
    .param p2, "aVal2"    # J

    .prologue
    .line 662
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 663
    const/4 v0, -0x1

    return v0

    .line 664
    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    .line 665
    const/4 v0, 0x0

    return v0

    .line 667
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getCollator(Ljava/lang/String;)Ljava/text/Collator;
    .locals 7
    .param p1, "aAddRule"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string/jumbo v4, "IndexBuilder"

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 471
    sget-boolean v4, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v4, :cond_0

    .line 472
    const-string/jumbo v4, "IndexBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "aAddRule : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_0
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    .line 476
    .local v1, "collator":Ljava/text/Collator;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 477
    instance-of v4, v1, Ljava/text/RuleBasedCollator;

    if-eqz v4, :cond_3

    .line 479
    :try_start_0
    new-instance v2, Ljava/text/RuleBasedCollator;

    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    check-cast v0, Ljava/text/RuleBasedCollator;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 479
    invoke-direct {v2, v4}, Ljava/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "collator":Ljava/text/Collator;
    .local v2, "collator":Ljava/text/Collator;
    move-object v1, v2

    .line 490
    .end local v2    # "collator":Ljava/text/Collator;
    .restart local v1    # "collator":Ljava/text/Collator;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v4, :cond_2

    .line 491
    instance-of v4, v1, Ljava/text/RuleBasedCollator;

    if-eqz v4, :cond_2

    .line 492
    const-string/jumbo v5, "IndexBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "collator rule : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, v1

    .line 493
    check-cast v4, Ljava/text/RuleBasedCollator;

    invoke-virtual {v4}, Ljava/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    move-result-object v4

    .line 492
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_2
    const-string/jumbo v4, "IndexBuilder"

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 497
    return-object v1

    .line 482
    :catch_0
    move-exception v3

    .line 483
    .local v3, "e":Ljava/text/ParseException;
    const-string/jumbo v4, "IndexBuilder"

    const-string/jumbo v5, "cannot create RuleBasedCollator"

    invoke-static {v4, v5, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 486
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_3
    const-string/jumbo v4, "IndexBuilder"

    const-string/jumbo v5, "Collator is not an instance of RuleBasedCollator"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
    .locals 4
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    const-class v2, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    monitor-enter v2

    .line 87
    :try_start_0
    const-string/jumbo v1, "IndexBuilder"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 91
    .local v0, "orient":I
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->sLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->sIndexBuilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    if-nez v1, :cond_2

    .line 96
    :cond_0
    :goto_0
    const-string/jumbo v1, "IndexBuilder"

    const-string/jumbo v3, "new IndexBuilder()"

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->sLocale:Ljava/util/Locale;

    .line 98
    sput v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->sScreenOrientation:I

    .line 99
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->sIndexBuilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    .line 101
    :cond_1
    const-string/jumbo v1, "IndexBuilder"

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 102
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->sIndexBuilder:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 93
    :cond_2
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->sLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    sget v1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->sScreenOrientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .end local v0    # "orient":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private init([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "sections"    # [Ljava/lang/String;
    .param p2, "ranges"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 161
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    .line 162
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    .line 163
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mElseSeparatorIndex:I

    .line 165
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    .line 166
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 167
    const-string/jumbo v0, "IndexBuilder"

    const-string/jumbo v1, "SectionTable: null"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "IndexBuilder"

    const-string/jumbo v1, "CollationKeyIndex: null"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_1
    const-string/jumbo v0, "IndexBuilder"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 171
    return-void

    .line 174
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->createSectionTables([Ljava/lang/String;)[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mElseSeparatorIndex:I

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->createKeyIndices([Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;[Ljava/lang/String;)[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    .line 160
    :cond_3
    return-void
.end method

.method private match([B[B)Z
    .locals 5
    .param p1, "array1"    # [B
    .param p2, "array2"    # [B

    .prologue
    const/4 v4, 0x0

    .line 727
    array-length v1, p1

    .line 728
    .local v1, "l":I
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    .line 729
    add-int/lit8 v1, v1, -0x1

    .line 731
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 732
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 733
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_2

    .line 734
    :cond_1
    return v4

    .line 731
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private newCollateEntry(Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;)Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;
    .locals 7
    .param p2, "aWrapper"    # Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;",
            ">(TE;",
            "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;",
            ")",
            "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p1, "aEntry":Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;, "TE;"
    const/4 v5, 0x0

    .line 529
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->getSortString()Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, "sortString":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 531
    :cond_0
    const/4 v4, 0x0

    .line 532
    .local v4, "key":Ljava/text/CollationKey;
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mElseSeparatorIndex:I

    .line 542
    .end local v4    # "key":Ljava/text/CollationKey;
    .local v3, "separatorIndex":I
    :goto_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;-><init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;ILjava/text/CollationKey;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)V

    return-object v0

    .line 534
    .end local v3    # "separatorIndex":I
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, v6}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v4

    .line 535
    .local v4, "key":Ljava/text/CollationKey;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    if-nez v0, :cond_2

    .line 536
    const/4 v3, 0x0

    .restart local v3    # "separatorIndex":I
    goto :goto_0

    .line 538
    .end local v3    # "separatorIndex":I
    :cond_2
    invoke-static {p2, v4}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;->-set0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;Ljava/text/CollationKey;)Ljava/text/CollationKey;

    .line 539
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->getSeparatorIndex(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;)I

    move-result v3

    .restart local v3    # "separatorIndex":I
    goto :goto_0
.end method

.method private setSectionPositions(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[II)V
    .locals 21
    .param p1, "aIndexer"    # Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;
    .param p2, "aSepPosList"    # [I
    .param p3, "aInitialPosition"    # I

    .prologue
    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    move-object/from16 v16, v0

    .line 756
    .local v16, "tables":[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    const/4 v2, 0x0

    .line 757
    .local v2, "cnt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v3, v0, :cond_1

    .line 758
    aget v18, p2, v3

    if-ltz v18, :cond_0

    .line 759
    add-int/lit8 v2, v2, 0x1

    .line 757
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 762
    :cond_1
    new-array v11, v2, [I

    .line 763
    .local v11, "positions":[I
    new-array v5, v2, [Ljava/lang/String;

    .line 765
    .local v5, "labels":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 766
    .local v4, "j":I
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v3, v0, :cond_3

    .line 767
    aget v18, p2, v3

    if-ltz v18, :cond_2

    .line 768
    aget v18, p2, v3

    aput v18, v11, v4

    .line 769
    aget-object v18, v16, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSeparatorLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v5, v4

    .line 770
    add-int/lit8 v4, v4, 0x1

    .line 766
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 775
    :cond_3
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set10(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 776
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set4(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[Ljava/lang/String;)[Ljava/lang/String;

    .line 780
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 781
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;>;"
    const/4 v6, -0x1

    .line 782
    .local v6, "lastSectionIndex":I
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v3, v0, :cond_6

    .line 783
    aget v18, p2, v3

    if-gez v18, :cond_5

    .line 782
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 786
    :cond_5
    aget-object v18, v16, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSectionIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v6, :cond_4

    .line 787
    aget-object v18, v16, v3

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    aget-object v18, v16, v3

    move-object/from16 v0, v18

    iget v6, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSectionIndex:I

    goto :goto_3

    .line 791
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 792
    .local v15, "size":I
    new-array v13, v15, [I

    .line 793
    .local v13, "sectionFirstPositions":[I
    new-array v14, v15, [I

    .line 794
    .local v14, "sectionIndexes":[I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v15, :cond_7

    .line 795
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    .line 796
    .local v17, "tbl":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSeparatorIndex:I

    move/from16 v18, v0

    aget v18, p2, v18

    aput v18, v13, v3

    .line 797
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSectionIndex:I

    move/from16 v18, v0

    aput v18, v14, v3

    .line 794
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 799
    .end local v17    # "tbl":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    :cond_7
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set8(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 800
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set9(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mIndexBoxLabels:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v12, v0

    .line 806
    .local v12, "sectionCnt":I
    if-gtz v12, :cond_8

    .line 807
    return-void

    .line 809
    :cond_8
    new-array v9, v12, [I

    .line 810
    .local v9, "moveUpPositions":[I
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([II)V

    .line 811
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v15, :cond_9

    .line 812
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    .line 813
    .restart local v17    # "tbl":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSectionIndex:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSeparatorIndex:I

    move/from16 v19, v0

    aget v19, p2, v19

    aput v19, v9, v18

    .line 811
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 815
    .end local v17    # "tbl":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v12, :cond_c

    .line 816
    aget v18, v9, v3

    if-gez v18, :cond_a

    .line 817
    if-nez v3, :cond_b

    .line 818
    aput p3, v9, v3

    .line 815
    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 820
    :cond_b
    add-int/lit8 v18, v3, -0x1

    aget v18, v9, v18

    aput v18, v9, v3

    goto :goto_7

    .line 825
    :cond_c
    new-array v8, v12, [I

    .line 826
    .local v8, "moveDownPositions":[I
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([II)V

    .line 827
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v15, :cond_d

    .line 828
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    .line 829
    .restart local v17    # "tbl":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSectionIndex:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSeparatorIndex:I

    move/from16 v19, v0

    aget v19, p2, v19

    aput v19, v8, v18

    .line 827
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 831
    .end local v17    # "tbl":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    :cond_d
    move/from16 v10, p3

    .line 832
    .local v10, "pos":I
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v12, :cond_12

    .line 833
    aget v18, v8, v3

    if-ltz v18, :cond_f

    .line 834
    aget v10, v8, v3

    .line 832
    :cond_e
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 836
    :cond_f
    add-int/lit8 v4, v3, 0x1

    :goto_b
    if-ge v4, v12, :cond_10

    .line 837
    aget v18, v8, v4

    if-ltz v18, :cond_11

    .line 838
    aget v18, v8, v4

    aput v18, v8, v3

    .line 842
    :cond_10
    aget v18, v8, v3

    if-gez v18, :cond_e

    .line 843
    aput v10, v8, v3

    goto :goto_a

    .line 836
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 847
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mIndexBoxLabels:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[Ljava/lang/String;)[Ljava/lang/String;

    .line 848
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set7(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 849
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set6(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 851
    sget-boolean v18, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v18, :cond_13

    .line 852
    const-string/jumbo v18, "IndexBuilder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mSeparatorPositions: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get8(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string/jumbo v18, "IndexBuilder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mLabels: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string/jumbo v18, "IndexBuilder"

    .line 856
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mSectionFirstPositions: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get6(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 855
    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string/jumbo v18, "IndexBuilder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mSectionIndexes: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get7(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string/jumbo v18, "IndexBuilder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mBoxLabels: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string/jumbo v18, "IndexBuilder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mMoveUpPositions: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get5(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string/jumbo v18, "IndexBuilder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mMoveDownPositions: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get4(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_13
    return-void
.end method


# virtual methods
.method public build(Ljava/util/ArrayList;II)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 18
    .param p2, "aMode"    # I
    .param p3, "aInitialPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;",
            ">(",
            "Ljava/util/ArrayList",
            "<TE;>;II)",
            "Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const-string/jumbo v14, "IndexBuilder"

    invoke-static {v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 264
    .local v9, "size":I
    const-wide/16 v12, 0x0

    .line 265
    .local v12, "time":J
    sget-boolean v14, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v14, :cond_0

    .line 266
    const-string/jumbo v14, "IndexBuilder"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "create mode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " count:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 269
    :cond_0
    new-instance v11, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;

    const/4 v14, 0x0

    invoke-direct {v11, v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;-><init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;)V

    .line 270
    .local v11, "wrapper":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;
    new-array v7, v9, [Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;

    .line 271
    .local v7, "list":[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;, "[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry<TE;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_1

    .line 272
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->newCollateEntry(Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;)Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;

    move-result-object v14

    aput-object v14, v7, v4

    .line 271
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 276
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;

    const/4 v14, 0x0

    invoke-direct {v6, v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;-><init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)V

    .line 277
    .local v6, "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;
    invoke-static {v6, v9}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 278
    move/from16 v0, p3

    invoke-static {v6, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set2(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    if-eqz v14, :cond_2

    const/4 v14, 0x2

    move/from16 v0, p2

    if-ne v0, v14, :cond_5

    .line 281
    :cond_2
    const/4 v14, 0x2

    invoke-static {v6, v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set5(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 282
    invoke-static {v6, v9}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 283
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 284
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_3

    .line 285
    aget-object v14, v7, v4

    invoke-static {v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 287
    :cond_3
    sget-boolean v14, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v14, :cond_4

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v12, v14, v12

    .line 289
    const-string/jumbo v14, "IndexBuilder"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sort: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_4
    const-string/jumbo v14, "IndexBuilder"

    invoke-static {v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 292
    return-object v6

    .line 295
    :cond_5
    move/from16 v0, p2

    invoke-static {v6, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set5(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 296
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 297
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    .line 298
    .local v10, "tables":[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosListLock:Ljava/lang/Object;

    monitor-enter v15

    .line 299
    :try_start_0
    array-length v14, v10

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosList:[I

    .line 300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosList:[I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/util/Arrays;->fill([II)V

    .line 301
    const/4 v8, -0x1

    .line 302
    .local v8, "preIdx":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_7

    .line 303
    aget-object v14, v7, v4

    invoke-static {v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->-get1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)I

    move-result v5

    .line 304
    .local v5, "idx":I
    if-eq v8, v5, :cond_6

    .line 305
    move v8, v5

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosList:[I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int v16, v16, p3

    aput v16, v14, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    const/4 v2, 0x0

    .line 310
    .local v2, "e":Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;, "TE;"
    const/4 v14, 0x0

    :try_start_1
    aget-object v14, v7, v14

    invoke-static {v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "e":Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;, "TE;"
    check-cast v2, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    .local v2, "e":Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;, "TE;"
    const-wide/16 v16, -0x2710

    :try_start_2
    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->setId(J)V

    .line 317
    aget-object v14, v10, v5

    iget-object v14, v14, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSeparatorLabel:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->setSortString(Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v2    # "e":Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;, "TE;"
    :cond_6
    aget-object v14, v7, v4

    invoke-static {v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 311
    :catch_0
    move-exception v3

    .line 312
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "You must define the default constructor to class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 314
    const/16 v17, 0x0

    aget-object v17, v7, v17

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    .line 312
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "idx":I
    .end local v8    # "preIdx":I
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 323
    .restart local v8    # "preIdx":I
    :cond_7
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v6, v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 324
    sget-boolean v14, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v14, :cond_8

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v12, v16, v12

    .line 326
    const-string/jumbo v14, "IndexBuilder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "sort: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosList:[I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v6, v14, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->setSectionPositions(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[II)V

    .line 331
    const-string/jumbo v14, "IndexBuilder"

    invoke-static {v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v15

    .line 333
    return-object v6
.end method

.method public buildIndexer(IIII)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 6
    .param p1, "listSize"    # I
    .param p2, "initialPosition"    # I
    .param p3, "indexerMode"    # I
    .param p4, "step"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;",
            ">(IIII)",
            "Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 350
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;-><init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)V

    .line 351
    .local v1, "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;
    invoke-static {v1, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 352
    invoke-static {v1, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 353
    invoke-static {v1, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set2(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 354
    invoke-static {v1, p3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set5(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 356
    div-int v3, p1, p4

    add-int/lit8 v2, v3, 0x1

    .line 357
    .local v2, "sectionCount":I
    new-array v3, v2, [I

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set8(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 358
    new-array v3, v2, [I

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set9(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 359
    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set4(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[Ljava/lang/String;)[Ljava/lang/String;

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 362
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get7(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I

    move-result-object v3

    aput v0, v3, v0

    .line 363
    if-nez v0, :cond_0

    .line 364
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get6(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I

    move-result-object v3

    aput v5, v3, v0

    .line 365
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 361
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_0
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get6(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I

    move-result-object v3

    mul-int v4, p4, v0

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v0

    .line 368
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[Ljava/lang/String;

    move-result-object v3

    mul-int v4, p4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_1

    .line 372
    :cond_1
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get6(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set7(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 373
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get6(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set6(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 374
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get6(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set10(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 375
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[Ljava/lang/String;)[Ljava/lang/String;

    .line 376
    return-object v1
.end method

.method public buildIndexer(Ljava/util/ArrayList;II)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 16
    .param p2, "aMode"    # I
    .param p3, "aInitialPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;",
            ">(",
            "Ljava/util/ArrayList",
            "<TE;>;II)",
            "Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const-string/jumbo v13, "IndexBuilder"

    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 385
    .local v8, "size":I
    const-wide/16 v10, 0x0

    .line 386
    .local v10, "time":J
    sget-boolean v13, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v13, :cond_0

    .line 387
    const-string/jumbo v13, "IndexBuilder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "create mode:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " count:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 390
    :cond_0
    new-instance v12, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;-><init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;)V

    .line 391
    .local v12, "wrapper":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;
    new-array v5, v8, [Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;

    .line 392
    .local v5, "list":[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;, "[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry<TE;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_1

    .line 393
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->newCollateEntry(Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;)Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;

    move-result-object v13

    aput-object v13, v5, v2

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    :cond_1
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 397
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;

    const/4 v13, 0x0

    invoke-direct {v4, v13}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;-><init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)V

    .line 398
    .local v4, "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;
    invoke-static {v4, v8}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 399
    move/from16 v0, p3

    invoke-static {v4, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set2(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 401
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    if-eqz v13, :cond_2

    const/4 v13, 0x2

    move/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 402
    :cond_2
    const/4 v13, 0x2

    invoke-static {v4, v13}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set5(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 403
    invoke-static {v4, v8}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 404
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 405
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_5

    .line 406
    aget-object v13, v5, v2

    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 401
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_2

    .line 416
    move/from16 v0, p2

    invoke-static {v4, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set5(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 417
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 418
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mTables:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    .line 420
    .local v9, "tables":[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosListLock:Ljava/lang/Object;

    monitor-enter v14

    .line 421
    :try_start_0
    array-length v13, v9

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosList:[I

    .line 422
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosList:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v7, "sepPosList":[I
    monitor-exit v14

    .line 424
    const/4 v13, -0x1

    invoke-static {v7, v13}, Ljava/util/Arrays;->fill([II)V

    .line 425
    const/4 v6, -0x1

    .line 426
    .local v6, "preIdx":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_7

    .line 427
    aget-object v13, v5, v2

    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->-get1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)I

    move-result v3

    .line 428
    .local v3, "idx":I
    if-eq v6, v3, :cond_4

    .line 429
    move v6, v3

    .line 430
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int v13, v13, p3

    aput v13, v7, v3

    .line 433
    :cond_4
    aget-object v13, v5, v2

    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 408
    .end local v3    # "idx":I
    .end local v6    # "preIdx":I
    .end local v7    # "sepPosList":[I
    .end local v9    # "tables":[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    :cond_5
    sget-boolean v13, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v13, :cond_6

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v10

    .line 410
    const-string/jumbo v13, "IndexBuilder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sort: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_6
    const-string/jumbo v13, "IndexBuilder"

    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 413
    return-object v4

    .line 420
    .restart local v9    # "tables":[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 435
    .restart local v6    # "preIdx":I
    .restart local v7    # "sepPosList":[I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v4, v13}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 436
    sget-boolean v13, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v13, :cond_8

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v10

    .line 438
    const-string/jumbo v13, "IndexBuilder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sort: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v7, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->setSectionPositions(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[II)V

    .line 443
    const-string/jumbo v13, "IndexBuilder"

    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 444
    return-object v4
.end method

.method createKey(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;
    .locals 2
    .param p1, "sortString"    # Ljava/lang/String;

    .prologue
    .line 1441
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;-><init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;)V

    .line 1442
    .local v0, "key":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, p1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;->-set0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;Ljava/text/CollationKey;)Ljava/text/CollationKey;

    .line 1444
    return-object v0
.end method

.method createKeyIndices([Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;[Ljava/lang/String;)[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;
    .locals 16
    .param p1, "tables"    # [Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    .param p2, "ranges"    # [Ljava/lang/String;

    .prologue
    .line 199
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 201
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v13, v0

    if-ge v3, v13, :cond_2

    .line 202
    aget-object v13, p2, v3

    if-nez v13, :cond_1

    .line 201
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    :cond_1
    aget-object v13, p2, v3

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 206
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 207
    aget-object v13, p2, v3

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 208
    aget-object v14, p2, v3

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 207
    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 214
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_2
    move-object/from16 v0, p1

    array-length v13, v0

    add-int/lit8 v2, v13, -0x1

    .line 215
    .local v2, "cnt":I
    new-array v5, v2, [Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    .line 216
    .local v5, "indices":[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_7

    .line 217
    aget-object v13, p1, v3

    iget-object v9, v13, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;->mSeparatorLabel:Ljava/lang/String;

    .line 218
    .local v9, "label":Ljava/lang/String;
    const/4 v7, 0x0

    .line 219
    .local v7, "key":Ljava/text/CollationKey;
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 221
    .local v11, "range":Ljava/lang/String;
    if-nez v11, :cond_3

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mCollator:Ljava/text/Collator;

    invoke-virtual {v13, v9}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v7

    .line 223
    .local v7, "key":Ljava/text/CollationKey;
    new-instance v13, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    const/4 v14, 0x0

    invoke-direct {v13, v3, v7, v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;-><init>(ILjava/text/CollationKey;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)V

    aput-object v13, v5, v3

    .line 216
    .end local v7    # "key":Ljava/text/CollationKey;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 224
    .local v7, "key":Ljava/text/CollationKey;
    :cond_3
    const/16 v13, 0x2d

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_4

    .line 225
    const-string/jumbo v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "array":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mCollator:Ljava/text/Collator;

    const/4 v14, 0x0

    aget-object v14, v1, v14

    invoke-virtual {v13, v14}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v7

    .line 227
    .local v7, "key":Ljava/text/CollationKey;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mCollator:Ljava/text/Collator;

    const/4 v14, 0x1

    aget-object v14, v1, v14

    invoke-virtual {v13, v14}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v12

    .line 228
    .local v12, "toKey":Ljava/text/CollationKey;
    new-instance v13, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    const/4 v14, 0x0

    invoke-direct {v13, v3, v7, v12, v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;-><init>(ILjava/text/CollationKey;Ljava/text/CollationKey;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)V

    aput-object v13, v5, v3

    goto :goto_3

    .line 230
    .end local v1    # "array":[Ljava/lang/String;
    .end local v12    # "toKey":Ljava/text/CollationKey;
    .local v7, "key":Ljava/text/CollationKey;
    :cond_4
    const-string/jumbo v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 231
    .restart local v1    # "array":[Ljava/lang/String;
    array-length v13, v1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mCollator:Ljava/text/Collator;

    const/4 v14, 0x0

    aget-object v14, v1, v14

    invoke-virtual {v13, v14}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v7

    .line 233
    .local v7, "key":Ljava/text/CollationKey;
    new-instance v13, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    const/4 v14, 0x0

    invoke-direct {v13, v3, v7, v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;-><init>(ILjava/text/CollationKey;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)V

    aput-object v13, v5, v3

    goto :goto_3

    .line 235
    .local v7, "key":Ljava/text/CollationKey;
    :cond_5
    array-length v13, v1

    new-array v8, v13, [Ljava/text/CollationKey;

    .line 236
    .local v8, "keys":[Ljava/text/CollationKey;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    array-length v13, v1

    if-ge v6, v13, :cond_6

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mCollator:Ljava/text/Collator;

    aget-object v14, v1, v6

    invoke-virtual {v13, v14}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v13

    aput-object v13, v8, v6

    .line 236
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 239
    :cond_6
    new-instance v13, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    const/4 v14, 0x0

    invoke-direct {v13, v3, v8, v14}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;-><init>(I[Ljava/text/CollationKey;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)V

    aput-object v13, v5, v3

    goto :goto_3

    .line 243
    .end local v1    # "array":[Ljava/lang/String;
    .end local v6    # "j":I
    .end local v7    # "key":Ljava/text/CollationKey;
    .end local v8    # "keys":[Ljava/text/CollationKey;
    .end local v9    # "label":Ljava/lang/String;
    .end local v11    # "range":Ljava/lang/String;
    :cond_7
    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-wrap0([Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)V

    .line 245
    return-object v5
.end method

.method createSectionTables([Ljava/lang/String;)[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    .locals 13
    .param p1, "sections"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 182
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;>;"
    const/4 v2, 0x0

    .line 184
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v6, p1

    .local v6, "l":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 185
    aget-object v10, p1, v1

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    array-length v5, v0

    .local v5, "k":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 187
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v10, v0, v4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v1, v3, v10, v12}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;-><init>(IILjava/lang/String;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;)V

    .line 188
    .local v9, "tbl":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_1

    .line 184
    .end local v9    # "tbl":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 191
    .end local v0    # "array":[Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 192
    .local v7, "length":I
    if-lez v7, :cond_2

    .line 193
    new-array v10, v7, [Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$SectionTable;

    return-object v10

    .line 195
    :cond_2
    return-object v12
.end method

.method public getAllSeparatorPositions()[I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 1448
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosListLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1449
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosList:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosList:[I

    array-length v5, v5

    if-nez v5, :cond_1

    .line 1450
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    .line 1453
    :cond_1
    const/4 v3, 0x0

    .line 1454
    .local v3, "validCount":I
    :try_start_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosList:[I

    array-length v0, v5

    .line 1455
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1456
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosList:[I

    aget v5, v5, v1

    if-eq v5, v7, :cond_2

    .line 1457
    add-int/lit8 v3, v3, 0x1

    .line 1455
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1462
    :cond_3
    new-array v4, v3, [I

    .line 1463
    .local v4, "validSep":[I
    const/4 v2, 0x0

    .line 1464
    .local v2, "n":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    .line 1465
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosList:[I

    aget v5, v5, v1

    if-eq v5, v7, :cond_4

    .line 1466
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSepPosList:[I

    aget v5, v5, v1

    aput v5, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1467
    add-int/lit8 v2, v2, 0x1

    .line 1464
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    monitor-exit v6

    .line 1471
    return-object v4

    .line 1448
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "validCount":I
    .end local v4    # "validSep":[I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method getSeparatorIndex(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;)I
    .locals 8
    .param p1, "aKeyWrapper"    # Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;

    .prologue
    .line 679
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    sget-object v7, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->KEY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, p1, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 680
    .local v4, "pos":I
    if-ltz v4, :cond_0

    .line 681
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-get3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)I

    move-result v6

    return v6

    .line 683
    :cond_0
    neg-int v6, v4

    add-int/lit8 v4, v6, -0x2

    .line 684
    if-ltz v4, :cond_1

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    array-length v6, v6

    if-lt v4, v6, :cond_2

    .line 685
    :cond_1
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mElseSeparatorIndex:I

    return v6

    .line 687
    :cond_2
    invoke-interface {p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;->getCollationKey()Ljava/text/CollationKey;

    move-result-object v2

    .line 688
    .local v2, "key":Ljava/text/CollationKey;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-get1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)[B

    move-result-object v6

    if-eqz v6, :cond_3

    .line 689
    invoke-virtual {v2}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v3

    .line 690
    .local v3, "keyByte":[B
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-get1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)[B

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->match([B[B)Z

    move-result v6

    if-nez v6, :cond_8

    .line 691
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mElseSeparatorIndex:I

    return v6

    .line 693
    .end local v3    # "keyByte":[B
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-get4(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)Ljava/text/CollationKey;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 694
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-get4(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)Ljava/text/CollationKey;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v6

    if-lez v6, :cond_8

    .line 695
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mElseSeparatorIndex:I

    return v6

    .line 697
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-get2(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)[[B

    move-result-object v6

    if-eqz v6, :cond_8

    .line 698
    invoke-virtual {v2}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v3

    .line 699
    .restart local v3    # "keyByte":[B
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-get2(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)[[B

    move-result-object v5

    .line 700
    .local v5, "sectionKeyBytes":[[B
    const/4 v0, 0x0

    .line 701
    .local v0, "b":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_6

    .line 702
    aget-object v6, v5, v1

    if-eqz v6, :cond_5

    .line 703
    aget-object v6, v5, v1

    invoke-direct {p0, v6, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->match([B[B)Z

    move-result v6

    .line 702
    if-eqz v6, :cond_7

    .line 704
    :cond_5
    const/4 v0, 0x1

    .line 708
    :cond_6
    if-nez v0, :cond_8

    .line 709
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mElseSeparatorIndex:I

    return v6

    .line 701
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v0    # "b":Z
    .end local v1    # "i":I
    .end local v3    # "keyByte":[B
    .end local v5    # "sectionKeyBytes":[[B
    :cond_8
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mKeyIndexes:[Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->-get3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)I

    move-result v6

    return v6
.end method

.method injectSections([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "sections"    # [Ljava/lang/String;
    .param p2, "ranges"    # [Ljava/lang/String;

    .prologue
    .line 1437
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->init([Ljava/lang/String;[Ljava/lang/String;)V

    .line 1436
    return-void
.end method

.method public isSortedByPhonetic()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->mSortedByPhonetic:Z

    return v0
.end method

.method public setProfileExist(Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;)V
    .locals 2
    .param p1, "source"    # Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .prologue
    move-object v0, p1

    .line 448
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;

    .line 450
    .local v0, "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get2(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 451
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-get1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 447
    return-void
.end method
