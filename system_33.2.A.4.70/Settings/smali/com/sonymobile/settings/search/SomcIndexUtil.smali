.class public Lcom/sonymobile/settings/search/SomcIndexUtil;
.super Ljava/lang/Object;
.source "SomcIndexUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sonymobile/settings/search/SomcIndexUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/sonymobile/settings/search/SomcIndexUtil;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private getAllSomcPreferencesFrom(Landroid/preference/PreferenceGroup;)Ljava/util/List;
    .locals 5
    .param p1, "pGroup"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v3, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 338
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 339
    .local v2, "preference":Landroid/preference/Preference;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 341
    check-cast v2, Landroid/preference/PreferenceGroup;

    .end local v2    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, v2}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getAllSomcPreferencesFrom(Landroid/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 337
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_1
    return-object v3
.end method

.method private getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 469
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 470
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 472
    .local v2, "tv":Landroid/util/TypedValue;
    const/4 v0, 0x0

    .line 473
    .local v0, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 474
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_2

    .line 475
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 480
    .end local v0    # "data":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 481
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3

    .line 477
    .restart local v0    # "data":Ljava/lang/CharSequence;
    :cond_2
    iget-object v0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .local v0, "data":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 448
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    .line 449
    const/4 v1, 0x6

    .line 447
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 453
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIncludeResource(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 458
    sget-object v0, Lcom/android/settings/R$styleable;->IncludePreference:[I

    .line 459
    const/4 v1, 0x0

    .line 457
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonymobile/settings/search/SomcIndexUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sget-object v0, Lcom/sonymobile/settings/search/SomcIndexUtil;->sInstance:Lcom/sonymobile/settings/search/SomcIndexUtil;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/sonymobile/settings/search/SomcIndexUtil;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/search/SomcIndexUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/settings/search/SomcIndexUtil;->sInstance:Lcom/sonymobile/settings/search/SomcIndexUtil;

    .line 90
    :goto_0
    sget-object v0, Lcom/sonymobile/settings/search/SomcIndexUtil;->sInstance:Lcom/sonymobile/settings/search/SomcIndexUtil;

    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lcom/sonymobile/settings/search/SomcIndexUtil;->sInstance:Lcom/sonymobile/settings/search/SomcIndexUtil;

    invoke-virtual {v0, p0}, Lcom/sonymobile/settings/search/SomcIndexUtil;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "resourceName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 371
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 372
    .local v2, "startIndex":I
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 373
    .local v0, "endIndex":I
    if-eq v2, v4, :cond_0

    if-eq v0, v4, :cond_0

    .line 374
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .end local v0    # "endIndex":I
    .end local v1    # "resourceName":Ljava/lang/String;
    .end local v2    # "startIndex":I
    :cond_0
    return-object v1
.end method

.method private indexFromSomcPreference(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 58
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "includeResourceName"    # Ljava/lang/String;
    .param p3, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "localeStr"    # Ljava/lang/String;
    .param p5, "fragmentName"    # Ljava/lang/String;
    .param p6, "screenTitle"    # Ljava/lang/String;
    .param p7, "iconResId"    # I
    .param p8, "rank"    # I
    .param p9, "intentAction"    # Ljava/lang/String;
    .param p10, "intentTargetPackage"    # Ljava/lang/String;
    .param p11, "intentTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    .local p12, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v52, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 228
    const-string/jumbo v4, "xml"

    const-string/jumbo v5, "com.android.settings"

    .line 227
    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v51

    .line 232
    .local v51, "resourceId":I
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    .line 233
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 236
    :cond_0
    new-instance v48, Lcom/sonymobile/settings/search/SearchPreferenceManager;

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/search/SearchPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 238
    .local v48, "prefMan":Lcom/sonymobile/settings/search/SearchPreferenceManager;
    const/4 v3, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/settings/search/SearchPreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v45

    .line 239
    .local v45, "pScreen":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->resolveSomcPreferenceScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v45

    .line 240
    move-object/from16 v47, v45

    .line 242
    .local v47, "prefGroup":Landroid/preference/PreferenceGroup;
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v56, "tempNonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v41, 0x0

    .local v41, "i":I
    invoke-virtual/range {v47 .. v47}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v39

    .local v39, "count":I
    :goto_0
    move/from16 v0, v41

    move/from16 v1, v39

    if-ge v0, v1, :cond_c

    .line 244
    move-object/from16 v0, v47

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v49

    .line 245
    .local v49, "preference":Landroid/preference/Preference;
    const/16 v43, 0x1

    .line 247
    .local v43, "isInsertSomcCategory":Z
    move-object/from16 v0, v49

    instance-of v3, v0, Lcom/sonymobile/settings/preference/PreferenceCategory;

    if-eqz v3, :cond_3

    move-object/from16 v44, v49

    .line 248
    check-cast v44, Lcom/sonymobile/settings/preference/PreferenceCategory;

    .line 249
    .local v44, "pCategory":Lcom/sonymobile/settings/preference/PreferenceCategory;
    const/16 v42, 0x0

    .local v42, "index":I
    :goto_1
    invoke-virtual/range {v44 .. v44}, Lcom/sonymobile/settings/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    move/from16 v0, v42

    if-ge v0, v3, :cond_3

    .line 250
    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v46

    .line 251
    .local v46, "pref":Landroid/preference/Preference;
    move-object/from16 v0, v46

    instance-of v3, v0, Lcom/sonymobile/settings/preference/util/DependOn;

    if-eqz v3, :cond_1

    move-object/from16 v40, v46

    .line 252
    check-cast v40, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 253
    .local v40, "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    invoke-interface/range {v40 .. v40}, Lcom/sonymobile/settings/preference/util/DependOn;->dependOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 254
    const/16 v43, 0x0

    .line 249
    .end local v40    # "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    :cond_1
    add-int/lit8 v42, v42, 0x1

    goto :goto_1

    .line 256
    .restart local v40    # "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    :cond_2
    const/16 v43, 0x1

    .line 263
    .end local v40    # "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    .end local v42    # "index":I
    .end local v44    # "pCategory":Lcom/sonymobile/settings/preference/PreferenceCategory;
    .end local v46    # "pref":Landroid/preference/Preference;
    :cond_3
    if-nez v43, :cond_5

    .line 243
    :cond_4
    :goto_2
    add-int/lit8 v41, v41, 0x1

    goto :goto_0

    .line 267
    :cond_5
    if-eqz p12, :cond_6

    invoke-virtual/range {v49 .. v49}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p12

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 272
    :cond_6
    move-object/from16 v0, v49

    instance-of v3, v0, Lcom/sonymobile/settings/preference/util/DependOn;

    if-eqz v3, :cond_b

    move-object/from16 v3, v49

    .line 274
    check-cast v3, Lcom/sonymobile/settings/preference/util/DependOn;

    invoke-interface {v3}, Lcom/sonymobile/settings/preference/util/DependOn;->dependOn()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 275
    invoke-virtual/range {v49 .. v49}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 276
    .local v14, "keywords":Ljava/lang/String;
    const/4 v7, 0x0

    .line 277
    .local v7, "summaryOn":Ljava/lang/String;
    const/4 v8, 0x0

    .line 278
    .local v8, "summaryOff":Ljava/lang/String;
    invoke-virtual/range {v49 .. v49}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 279
    invoke-virtual/range {v49 .. v49}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 281
    .end local v7    # "summaryOn":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v49

    instance-of v3, v0, Lcom/sonymobile/settings/preference/CheckBoxPreference;

    if-eqz v3, :cond_8

    move-object/from16 v38, v49

    .line 282
    check-cast v38, Lcom/sonymobile/settings/preference/CheckBoxPreference;

    .line 283
    .local v38, "checkBoxPreference":Lcom/sonymobile/settings/preference/CheckBoxPreference;
    invoke-virtual/range {v38 .. v38}, Lcom/sonymobile/settings/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v53

    .line 284
    .local v53, "string1":Ljava/lang/CharSequence;
    invoke-virtual/range {v38 .. v38}, Lcom/sonymobile/settings/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v54

    .line 285
    .local v54, "string2":Ljava/lang/CharSequence;
    invoke-static/range {v53 .. v53}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 290
    .end local v8    # "summaryOff":Ljava/lang/String;
    .end local v38    # "checkBoxPreference":Lcom/sonymobile/settings/preference/CheckBoxPreference;
    .end local v53    # "string1":Ljava/lang/CharSequence;
    .end local v54    # "string2":Ljava/lang/CharSequence;
    :cond_8
    :goto_3
    invoke-virtual/range {v49 .. v49}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v19

    .line 291
    .local v19, "key":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;

    .line 292
    invoke-virtual/range {v49 .. v49}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    .line 294
    const/16 v18, 0x1

    .line 295
    const/16 v20, -0x1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    .line 291
    invoke-direct/range {v3 .. v20}, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    move-object/from16 v0, v52

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    move-object/from16 v0, v56

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 297
    move-object/from16 v0, v56

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 286
    .end local v19    # "key":Ljava/lang/String;
    .restart local v8    # "summaryOff":Ljava/lang/String;
    .restart local v38    # "checkBoxPreference":Lcom/sonymobile/settings/preference/CheckBoxPreference;
    .restart local v53    # "string1":Ljava/lang/CharSequence;
    .restart local v54    # "string2":Ljava/lang/CharSequence;
    :cond_9
    invoke-interface/range {v53 .. v53}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 287
    .local v7, "summaryOn":Ljava/lang/String;
    invoke-interface/range {v54 .. v54}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "summaryOff":Ljava/lang/String;
    goto :goto_3

    .line 299
    .end local v7    # "summaryOn":Ljava/lang/String;
    .end local v8    # "summaryOff":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    .end local v38    # "checkBoxPreference":Lcom/sonymobile/settings/preference/CheckBoxPreference;
    .end local v53    # "string1":Ljava/lang/CharSequence;
    .end local v54    # "string2":Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, v49

    instance-of v3, v0, Lcom/sonymobile/settings/preference/RemovePreference;

    if-eqz v3, :cond_4

    move-object/from16 v50, v49

    .line 301
    check-cast v50, Lcom/sonymobile/settings/preference/RemovePreference;

    .line 302
    .local v50, "remove":Lcom/sonymobile/settings/preference/RemovePreference;
    invoke-virtual/range {v50 .. v50}, Lcom/sonymobile/settings/preference/RemovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object v55

    .line 303
    .local v55, "targetKey":Ljava/lang/String;
    if-eqz v55, :cond_4

    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 306
    .end local v50    # "remove":Lcom/sonymobile/settings/preference/RemovePreference;
    .end local v55    # "targetKey":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v49 .. v49}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 307
    .restart local v14    # "keywords":Ljava/lang/String;
    invoke-virtual/range {v49 .. v49}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v19

    .line 308
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {v49 .. v49}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v57

    .line 309
    .local v57, "title":Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static/range {v57 .. v57}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 310
    new-instance v20, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;

    invoke-interface/range {v57 .. v57}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    .line 311
    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 312
    const/16 v35, 0x1

    .line 313
    const/16 v37, -0x1

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v27, p5

    move-object/from16 v28, p6

    move/from16 v29, p7

    move/from16 v30, p8

    move-object/from16 v31, v14

    move-object/from16 v32, p9

    move-object/from16 v33, p10

    move-object/from16 v34, p11

    move-object/from16 v36, v19

    .line 310
    invoke-direct/range {v20 .. v37}, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    move-object/from16 v0, v52

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    move-object/from16 v0, v56

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 315
    move-object/from16 v0, v56

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 320
    .end local v14    # "keywords":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    .end local v43    # "isInsertSomcCategory":Z
    .end local v49    # "preference":Landroid/preference/Preference;
    .end local v57    # "title":Ljava/lang/CharSequence;
    :cond_c
    if-eqz p12, :cond_d

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 323
    :cond_d
    :goto_4
    return-object v52

    .line 321
    :cond_e
    move-object/from16 v0, p12

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4
.end method

.method private resolveSomcPreferenceScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 4
    .param p1, "pScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getAllSomcPreferencesFrom(Landroid/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v2

    .line 328
    .local v2, "tmpAddedPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 329
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 330
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 332
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getCursorForNoMatches([Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/MergeCursor;
    .locals 8
    .param p1, "cursors"    # [Landroid/database/Cursor;
    .param p2, "selectColumns"    # [Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 106
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 108
    .local v2, "noMatchCursor":Landroid/database/MatrixCursor;
    iget-object v4, p0, Lcom/sonymobile/settings/search/SomcIndexUtil;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0c8a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "noMatches":Ljava/lang/String;
    array-length v4, p2

    new-array v0, v4, [Ljava/lang/String;

    .line 110
    .local v0, "mColumnValues":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "results no match@="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 111
    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 112
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 113
    const/4 v4, 0x2

    aput-object v2, p1, v4

    .line 114
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, p1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 115
    .local v1, "mergeCursor":Landroid/database/MergeCursor;
    return-object v1
.end method

.method public getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "node"    # Ljava/lang/String;

    .prologue
    .line 391
    const/4 v8, 0x0

    .line 393
    .local v8, "result":Ljava/lang/String;
    const/4 v7, 0x0

    .line 395
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 398
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    .local v9, "type":I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 399
    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 403
    :cond_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v10, "PreferenceScreen"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 405
    new-instance v10, Ljava/lang/RuntimeException;

    .line 406
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 407
    const-string/jumbo v12, " at "

    .line 406
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 407
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    .line 406
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 405
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "type":I
    :catch_0
    move-exception v4

    .line 436
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "Error parsing PreferenceScreen"

    invoke-direct {v10, v11, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v10

    .line 440
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 439
    :cond_2
    throw v10

    .line 410
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "type":I
    :cond_3
    :try_start_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 411
    .local v6, "outerDepth":I
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 413
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_4
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    .line 414
    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_6

    .line 415
    :cond_5
    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    const/4 v10, 0x4

    if-eq v9, v10, :cond_4

    .line 419
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 421
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 422
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 424
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 440
    .end local v2    # "dataKey":Ljava/lang/String;
    .end local v8    # "result":Ljava/lang/String;
    :cond_6
    :goto_0
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 443
    :cond_7
    return-object v8

    .line 427
    .restart local v8    # "result":Ljava/lang/String;
    :cond_8
    :try_start_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 428
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 429
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getIncludeResource(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .local v8, "result":Ljava/lang/String;
    goto :goto_0

    .line 437
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "outerDepth":I
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "type":I
    .local v8, "result":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 438
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "Error parsing PreferenceScreen"

    invoke-direct {v10, v11, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public handleIncludePreferencesIfNecessary(Landroid/content/Context;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlResId"    # I
    .param p3, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "localeStr"    # Ljava/lang/String;
    .param p5, "fragmentName"    # Ljava/lang/String;
    .param p6, "screenTitle"    # Ljava/lang/String;
    .param p7, "iconResId"    # I
    .param p8, "rank"    # I
    .param p9, "intentAction"    # Ljava/lang/String;
    .param p10, "intentTargetPackage"    # Ljava/lang/String;
    .param p11, "intentTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    .local p12, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v17, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    const-string/jumbo v3, "IncludePreference"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 355
    .local v16, "includeResource":Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v3 .. v15}, Lcom/sonymobile/settings/search/SomcIndexUtil;->indexFromSomcPreference(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    .line 360
    :cond_0
    return-object v17
.end method

.method public indexFromSomcDashboardTiles(Landroid/content/Context;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlResId"    # I
    .param p3, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "localeStr"    # Ljava/lang/String;
    .param p5, "fragmentName"    # Ljava/lang/String;
    .param p6, "screenTitle"    # Ljava/lang/String;
    .param p7, "iconResId"    # I
    .param p8, "rank"    # I
    .param p9, "intentAction"    # Ljava/lang/String;
    .param p10, "intentTargetPackage"    # Ljava/lang/String;
    .param p11, "intentTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v29, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    new-instance v22, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-direct/range {v22 .. v22}, Lcom/android/settings/dashboard/DashboardCategory;-><init>()V

    .line 152
    .local v22, "category":Lcom/android/settings/dashboard/DashboardCategory;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v20, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p1

    .line 155
    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x1

    .line 154
    move/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v2, v0, v1, v3}, Lcom/sonymobile/settings/SomcDashboardTiles;->loadTilesFromResource(Lcom/android/settings/SettingsActivity;ILjava/util/List;Z)V

    .line 157
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_4

    .line 158
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    check-cast v22, Lcom/android/settings/dashboard/DashboardCategory;

    .line 159
    .restart local v22    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    move-object/from16 v32, v0

    .line 160
    .local v32, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardTile;>;"
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_3

    .line 161
    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/settings/dashboard/DashboardTile;

    .line 162
    .local v31, "tile":Lcom/android/settings/dashboard/DashboardTile;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    move-object/from16 v21, v0

    .line 163
    .local v21, "bundle":Landroid/os/Bundle;
    if-eqz v21, :cond_2

    .line 164
    const-string/jumbo v2, "extra_fragment_preference_xml"

    .line 163
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    const-string/jumbo v2, "extra_fragment_preference_xml"

    .line 165
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 168
    .local v23, "fragmentReference":Ljava/lang/String;
    const-string/jumbo v2, "extra_fragment_help_resource"

    .line 167
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 169
    .local v24, "helpResource":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 174
    .local v14, "updatedIntentAction":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    const-string/jumbo v3, "@="

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 179
    :cond_0
    const/16 v27, 0x0

    .line 181
    .local v27, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v23 .. v23}, Lcom/sonymobile/settings/preferencecontroller/GenericSettingsPreferenceControllerFactory;->create(Ljava/lang/String;)Lcom/sonymobile/settings/preferencecontroller/PreferenceController;

    move-result-object v28

    .line 183
    .local v28, "preferenceController":Lcom/sonymobile/settings/preferencecontroller/PreferenceController;
    if-eqz v28, :cond_1

    .line 184
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sonymobile/settings/preferencecontroller/PreferenceController;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v27

    .line 187
    .end local v27    # "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    move/from16 p7, v0

    .line 189
    new-instance v2, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 190
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 192
    const/4 v13, 0x0

    .line 193
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    .line 189
    invoke-direct/range {v2 .. v19}, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v23

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, v27

    .line 194
    invoke-direct/range {v5 .. v17}, Lcom/sonymobile/settings/search/SomcIndexUtil;->indexFromSomcPreference(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v30

    .line 199
    .local v30, "resultFromOneFragment":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    invoke-interface/range {v29 .. v30}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    .end local v14    # "updatedIntentAction":Ljava/lang/String;
    .end local v23    # "fragmentReference":Ljava/lang/String;
    .end local v24    # "helpResource":Ljava/lang/String;
    .end local v28    # "preferenceController":Lcom/sonymobile/settings/preferencecontroller/PreferenceController;
    .end local v30    # "resultFromOneFragment":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;>;"
    :cond_2
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 157
    .end local v21    # "bundle":Landroid/os/Bundle;
    .end local v31    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_3
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 204
    .end local v26    # "j":I
    .end local v32    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardTile;>;"
    :cond_4
    return-object v29
.end method

.method public isDashboardCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string/jumbo v0, "dashboard-categories"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonymobile/settings/search/SomcIndexUtil;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method
