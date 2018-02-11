.class public Lcom/sonymobile/settings/preference/util/DependOnUtil;
.super Ljava/lang/Object;
.source "DependOnUtil.java"


# instance fields
.field private mAdd:Z

.field private final mAfter:Ljava/lang/String;

.field private final mBefore:Ljava/lang/String;

.field private final mHasMetaData:Z

.field private final mHasSystemFeature:Ljava/lang/String;

.field private final mIsOwnerOnly:Z

.field private final mIsValidIntent:Z

.field private final mParent:Ljava/lang/String;

.field private final mSettingsSecure:Ljava/lang/String;

.field private final mSettingsSystem:Ljava/lang/String;

.field private final mSystemProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v3, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 99
    sget-object v1, Lcom/android/settings/R$styleable;->DependOnPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAfter:Ljava/lang/String;

    .line 101
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mBefore:Ljava/lang/String;

    .line 102
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mParent:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 104
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    .line 105
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    .line 106
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    .line 107
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsValidIntent:Z

    .line 109
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsOwnerOnly:Z

    .line 110
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method public static addPreferencesFromResource(Landroid/content/Context;Landroid/preference/PreferenceScreen;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preferenceAdder"    # Lcom/sonymobile/settings/preference/util/PreferencesAdder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/preference/PreferenceScreen;",
            "Lcom/sonymobile/settings/preference/util/PreferencesAdder;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p3, "resumeListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    if-eqz p1, :cond_0

    .line 594
    invoke-static {p1, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    .line 592
    :cond_0
    return-void
.end method

.method private static addPreferencesFromResource(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V
    .locals 26
    .param p0, "screen"    # Landroid/preference/PreferenceScreen;
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "preferenceAdder"    # Lcom/sonymobile/settings/preference/util/PreferencesAdder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Landroid/preference/PreferenceGroup;",
            "Lcom/sonymobile/settings/preference/util/PreferencesAdder;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p3, "resumeListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v18, "removePrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v19, "sortPrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_6

    .line 480
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v15

    .line 481
    .local v15, "pref":Landroid/preference/Preference;
    const/4 v9, 0x0

    .line 482
    .local v9, "isRemoved":Z
    instance-of v0, v15, Lcom/sonymobile/settings/preference/IncludePreference;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object v8, v15

    .line 484
    check-cast v8, Lcom/sonymobile/settings/preference/IncludePreference;

    .line 485
    .local v8, "includePref":Lcom/sonymobile/settings/preference/IncludePreference;
    invoke-virtual {v8}, Lcom/sonymobile/settings/preference/IncludePreference;->dependOn()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 486
    invoke-virtual {v8}, Lcom/sonymobile/settings/preference/IncludePreference;->getIncludeResId()I

    move-result v23

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/sonymobile/settings/preference/util/PreferencesAdder;->addPreferencesFromResource(I)V

    .line 488
    :cond_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const/4 v9, 0x1

    .line 508
    .end local v8    # "includePref":Lcom/sonymobile/settings/preference/IncludePreference;
    :cond_1
    :goto_1
    if-nez v9, :cond_2

    instance-of v0, v15, Landroid/preference/PreferenceGroup;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v23, v15

    .line 509
    check-cast v23, Landroid/preference/PreferenceGroup;

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v23

    if-lez v23, :cond_2

    move-object/from16 v23, v15

    .line 511
    check-cast v23, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    move-object/from16 v23, v15

    .line 514
    check-cast v23, Landroid/preference/PreferenceGroup;

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v23

    if-nez v23, :cond_2

    .line 515
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    const/4 v9, 0x1

    .line 479
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 490
    :cond_3
    instance-of v0, v15, Lcom/sonymobile/settings/preference/util/DependOn;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object v5, v15

    .line 491
    check-cast v5, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 492
    .local v5, "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    invoke-interface {v5}, Lcom/sonymobile/settings/preference/util/DependOn;->dependOn()Z

    move-result v23

    if-nez v23, :cond_4

    .line 493
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    const/4 v9, 0x1

    goto :goto_1

    .line 499
    :cond_4
    invoke-static {v5}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->isMoving(Lcom/sonymobile/settings/preference/util/DependOn;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 500
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_5
    invoke-interface {v5}, Lcom/sonymobile/settings/preference/util/DependOn;->hasResumeActions()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 503
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 527
    .end local v5    # "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    .end local v9    # "isRemoved":Z
    .end local v15    # "pref":Landroid/preference/Preference;
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "dependOnPref$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/settings/preference/util/DependOn;

    .restart local v5    # "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    move-object/from16 v23, v5

    .line 528
    check-cast v23, Landroid/preference/Preference;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 529
    instance-of v0, v5, Lcom/sonymobile/settings/preference/MovePreference;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object v10, v5

    .line 532
    check-cast v10, Lcom/sonymobile/settings/preference/MovePreference;

    .line 533
    .local v10, "movePref":Lcom/sonymobile/settings/preference/MovePreference;
    invoke-virtual {v10}, Lcom/sonymobile/settings/preference/MovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object v21

    .line 534
    .local v21, "targetKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 535
    .local v22, "targetPref":Landroid/preference/Preference;
    if-eqz v22, :cond_7

    .line 536
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 537
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/sonymobile/settings/preference/MovePreference;->setTargetPreference(Landroid/preference/Preference;)V

    goto :goto_2

    .line 543
    .end local v5    # "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    .end local v10    # "movePref":Lcom/sonymobile/settings/preference/MovePreference;
    .end local v21    # "targetKey":Ljava/lang/String;
    .end local v22    # "targetPref":Landroid/preference/Preference;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->groupPreferences(Landroid/preference/PreferenceScreen;Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v14

    .line 547
    .local v14, "parentPrefs":Ljava/util/Map;, "Ljava/util/Map<Landroid/preference/PreferenceGroup;Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;>;"
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "parent$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceGroup;

    .line 548
    .local v11, "parent":Landroid/preference/PreferenceGroup;
    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 549
    .local v4, "childPrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    invoke-static {v11, v4}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->sortPreferences(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 554
    .end local v4    # "childPrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    .end local v11    # "parent":Landroid/preference/PreferenceGroup;
    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "pref$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/preference/Preference;

    .line 558
    .restart local v15    # "pref":Landroid/preference/Preference;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 560
    instance-of v0, v15, Lcom/sonymobile/settings/preference/RemovePreference;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v17, v15

    .line 563
    check-cast v17, Lcom/sonymobile/settings/preference/RemovePreference;

    .line 564
    .local v17, "removePref":Lcom/sonymobile/settings/preference/RemovePreference;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/settings/preference/RemovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object v21

    .line 565
    .restart local v21    # "targetKey":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/settings/preference/RemovePreference;->getParent()Ljava/lang/String;

    move-result-object v13

    .line 566
    .local v13, "parentKey":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 568
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_b

    move-object/from16 v20, p0

    .line 570
    .local v20, "targetGroup":Landroid/preference/PreferenceGroup;
    :goto_5
    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 571
    .restart local v22    # "targetPref":Landroid/preference/Preference;
    if-eqz v22, :cond_c

    .line 573
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 568
    .end local v20    # "targetGroup":Landroid/preference/PreferenceGroup;
    .end local v22    # "targetPref":Landroid/preference/Preference;
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceGroup;

    .restart local v20    # "targetGroup":Landroid/preference/PreferenceGroup;
    goto :goto_5

    .line 575
    .restart local v22    # "targetPref":Landroid/preference/Preference;
    :cond_c
    const-string/jumbo v23, "SomcPreferences"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Removing targetKey="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", targetParentKey="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 576
    const-string/jumbo v25, " failed."

    .line 575
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 470
    .end local v13    # "parentKey":Ljava/lang/String;
    .end local v15    # "pref":Landroid/preference/Preference;
    .end local v17    # "removePref":Lcom/sonymobile/settings/preference/RemovePreference;
    .end local v20    # "targetGroup":Landroid/preference/PreferenceGroup;
    .end local v21    # "targetKey":Ljava/lang/String;
    .end local v22    # "targetPref":Landroid/preference/Preference;
    :cond_d
    return-void
.end method

.method private static findAfter(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;
    .locals 3
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "dependOnPref"    # Lcom/sonymobile/settings/preference/util/DependOn;

    .prologue
    const/4 v0, 0x0

    .line 273
    const-string/jumbo v1, "last"

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static findBefore(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;
    .locals 3
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "dependOnPref"    # Lcom/sonymobile/settings/preference/util/DependOn;

    .prologue
    const/4 v0, 0x0

    .line 287
    const-string/jumbo v1, "first"

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static getParentOfKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceGroup;
    .locals 6
    .param p0, "root"    # Landroid/preference/PreferenceGroup;
    .param p1, "childKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 410
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v5

    .line 411
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 412
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 413
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 414
    return-object p0

    .line 415
    :cond_2
    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_3

    .line 416
    check-cast v3, Landroid/preference/PreferenceGroup;

    .end local v3    # "pref":Landroid/preference/Preference;
    invoke-static {v3, p1}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentOfKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceGroup;

    move-result-object v2

    .line 418
    .local v2, "parent":Landroid/preference/PreferenceGroup;
    if-eqz v2, :cond_3

    return-object v2

    .line 411
    .end local v2    # "parent":Landroid/preference/PreferenceGroup;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_4
    return-object v5
.end method

.method private static groupPreferences(Landroid/preference/PreferenceScreen;Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 9
    .param p0, "screen"    # Landroid/preference/PreferenceScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "sortPrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 433
    .local v7, "parentPrefs":Ljava/util/Map;, "Ljava/util/Map<Landroid/preference/PreferenceGroup;Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "dependOnPref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 434
    .local v3, "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    invoke-interface {v3}, Lcom/sonymobile/settings/preference/util/DependOn;->getParent()Ljava/lang/String;

    move-result-object v6

    .line 435
    .local v6, "parentKey":Ljava/lang/String;
    invoke-interface {v3}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "beforeKey":Ljava/lang/String;
    invoke-interface {v3}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "afterKey":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 445
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 450
    .local v5, "parent":Landroid/preference/PreferenceGroup;
    :goto_1
    if-nez v5, :cond_0

    move-object v5, p0

    .line 452
    :cond_0
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 453
    .local v2, "childPrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    if-nez v2, :cond_1

    .line 455
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "childPrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .restart local v2    # "childPrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    invoke-interface {v7, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    .end local v2    # "childPrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    .end local v5    # "parent":Landroid/preference/PreferenceGroup;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 447
    invoke-static {p0, v1}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentOfKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceGroup;

    move-result-object v5

    .restart local v5    # "parent":Landroid/preference/PreferenceGroup;
    goto :goto_1

    .line 448
    .end local v5    # "parent":Landroid/preference/PreferenceGroup;
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 449
    invoke-static {p0, v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentOfKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceGroup;

    move-result-object v5

    .restart local v5    # "parent":Landroid/preference/PreferenceGroup;
    goto :goto_1

    .end local v5    # "parent":Landroid/preference/PreferenceGroup;
    :cond_4
    move-object v5, p0

    .restart local v5    # "parent":Landroid/preference/PreferenceGroup;
    goto :goto_1

    .line 460
    .end local v0    # "afterKey":Ljava/lang/String;
    .end local v1    # "beforeKey":Ljava/lang/String;
    .end local v3    # "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    .end local v5    # "parent":Landroid/preference/PreferenceGroup;
    .end local v6    # "parentKey":Ljava/lang/String;
    :cond_5
    return-object v7
.end method

.method private static isMoving(Lcom/sonymobile/settings/preference/util/DependOn;)Z
    .locals 1
    .param p0, "dependOn"    # Lcom/sonymobile/settings/preference/util/DependOn;

    .prologue
    .line 262
    invoke-interface {p0}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 263
    :cond_1
    instance-of v0, p0, Lcom/sonymobile/settings/preference/PreferenceGroup;

    goto :goto_0
.end method

.method private parseMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/preference/Preference;)V
    .locals 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 182
    :try_start_0
    iget-object v9, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 183
    .local v6, "res":Landroid/content/res/Resources;
    iget-object v9, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 184
    .local v5, "metaData":Landroid/os/Bundle;
    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    .line 185
    const-string/jumbo v9, "com.sonymobile.settings.preference.TITLE"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 186
    .local v7, "resId":I
    if-nez v7, :cond_0

    .line 187
    const-string/jumbo v9, "com.sonyericsson.preference.title"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 188
    :cond_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    :cond_1
    const-string/jumbo v9, "com.sonymobile.settings.preference.SUMMARY"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 191
    if-nez v7, :cond_2

    .line 192
    const-string/jumbo v9, "com.sonyericsson.preference.summary"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 193
    :cond_2
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    :cond_3
    instance-of v9, p3, Landroid/preference/TwoStatePreference;

    if-eqz v9, :cond_5

    .line 196
    move-object v0, p3

    check-cast v0, Landroid/preference/TwoStatePreference;

    move-object v8, v0

    .line 197
    .local v8, "twoStatePreference":Landroid/preference/TwoStatePreference;
    const-string/jumbo v9, "com.sonymobile.settings.preference.SUMMARY_ON"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 198
    if-eqz v7, :cond_4

    .line 199
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 201
    :cond_4
    const-string/jumbo v9, "com.sonymobile.settings.preference.SUMMARY_OFF"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 202
    if-eqz v7, :cond_5

    .line 203
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 206
    .end local v8    # "twoStatePreference":Landroid/preference/TwoStatePreference;
    :cond_5
    instance-of v9, p3, Lcom/sonymobile/settings/preference/IntentPreference;

    if-eqz v9, :cond_6

    .line 207
    move-object v0, p3

    check-cast v0, Lcom/sonymobile/settings/preference/IntentPreference;

    move-object v3, v0

    .line 208
    .local v3, "intentPreference":Lcom/sonymobile/settings/preference/IntentPreference;
    const-string/jumbo v9, "com.sonymobile.settings.preference.ENTRIES"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 209
    if-eqz v7, :cond_6

    .line 210
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/sonymobile/settings/preference/IntentPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 213
    .end local v3    # "intentPreference":Lcom/sonymobile/settings/preference/IntentPreference;
    :cond_6
    instance-of v9, p3, Landroid/preference/ListPreference;

    if-eqz v9, :cond_8

    .line 214
    move-object v0, p3

    check-cast v0, Landroid/preference/ListPreference;

    move-object v4, v0

    .line 215
    .local v4, "listPreference":Landroid/preference/ListPreference;
    const-string/jumbo v9, "com.sonymobile.settings.preference.ENTRIES"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 216
    if-eqz v7, :cond_7

    .line 217
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 219
    :cond_7
    const-string/jumbo v9, "com.sonymobile.settings.preference.ENTRY_VALUES"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 220
    if-eqz v7, :cond_8

    .line 221
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    .end local v4    # "listPreference":Landroid/preference/ListPreference;
    .end local v5    # "metaData":Landroid/os/Bundle;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "resId":I
    :cond_8
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 227
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method private static reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V
    .locals 9
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "order"    # I

    .prologue
    .line 306
    instance-of v6, p1, Lcom/sonymobile/settings/preference/MovePreference;

    if-eqz v6, :cond_2

    move-object v6, p1

    .line 308
    check-cast v6, Lcom/sonymobile/settings/preference/MovePreference;

    invoke-virtual {v6}, Lcom/sonymobile/settings/preference/MovePreference;->getTargetPreference()Landroid/preference/Preference;

    move-result-object v5

    .line 309
    .local v5, "targetPref":Landroid/preference/Preference;
    if-eqz v5, :cond_1

    .line 311
    invoke-static {p0, v5, p2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    .line 302
    .end local v5    # "targetPref":Landroid/preference/Preference;
    .end local p1    # "pref":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 313
    .restart local v5    # "targetPref":Landroid/preference/Preference;
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_1
    check-cast p1, Lcom/sonymobile/settings/preference/MovePreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/sonymobile/settings/preference/MovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "targetKey":Ljava/lang/String;
    const-string/jumbo v6, "SomcPreferences"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Moving targetKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    .end local v4    # "targetKey":Ljava/lang/String;
    .end local v5    # "targetPref":Landroid/preference/Preference;
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_2
    instance-of v6, p1, Lcom/sonymobile/settings/preference/PreferenceGroup;

    if-eqz v6, :cond_3

    move-object v3, p1

    .line 318
    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 319
    .local v3, "internalGroup":Landroid/preference/PreferenceGroup;
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 320
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 321
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 322
    .local v0, "child":Landroid/preference/Preference;
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    add-int/lit8 v6, p2, -0x1

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 324
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 326
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOrder(I)V

    .line 320
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 329
    .end local v0    # "child":Landroid/preference/Preference;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "internalGroup":Landroid/preference/PreferenceGroup;
    :cond_3
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setOrder(I)V

    .line 330
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private static sortPreferences(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .locals 12
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sortPrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    const/4 v11, 0x0

    .line 340
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->isOrderingAsAdded()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 342
    :cond_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 356
    .local v2, "count":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v5, v10, 0x1

    .line 357
    .local v5, "distance":I
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_2

    .line 358
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    .line 359
    .local v9, "pref":Landroid/preference/Preference;
    add-int/lit8 v10, v6, 0x1

    mul-int/2addr v10, v5

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOrder(I)V

    .line 357
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 364
    .end local v9    # "pref":Landroid/preference/Preference;
    :cond_2
    move v8, v5

    .line 367
    .local v8, "orderOfFirstPreference":I
    invoke-virtual {p0, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 368
    const/4 v5, 0x0

    .line 369
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "dependOnPref$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 370
    .local v3, "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    add-int/lit8 v5, v5, 0x1

    move-object v9, v3

    .line 371
    check-cast v9, Landroid/preference/Preference;

    .line 372
    .restart local v9    # "pref":Landroid/preference/Preference;
    invoke-static {p0, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->findAfter(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;

    move-result-object v0

    .line 373
    .local v0, "afterPref":Landroid/preference/Preference;
    invoke-static {p0, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->findBefore(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;

    move-result-object v1

    .line 374
    .local v1, "beforePref":Landroid/preference/Preference;
    if-eqz v0, :cond_3

    .line 375
    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    add-int/2addr v10, v5

    invoke-static {p0, v9, v10}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    goto :goto_1

    .line 376
    :cond_3
    if-eqz v1, :cond_4

    .line 379
    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 380
    .local v7, "order":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v10, v7, v10

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    invoke-static {p0, v9, v10}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    goto :goto_1

    .line 382
    .end local v7    # "order":I
    :cond_4
    instance-of v10, v9, Lcom/sonymobile/settings/preference/PreferenceGroup;

    if-eqz v10, :cond_5

    .line 384
    invoke-virtual {v9}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    invoke-static {p0, v9, v10}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    goto :goto_1

    .line 387
    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    add-int/2addr v10, v5

    invoke-static {p0, v9, v10}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    goto :goto_1

    .line 397
    .end local v0    # "afterPref":Landroid/preference/Preference;
    .end local v1    # "beforePref":Landroid/preference/Preference;
    .end local v3    # "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    .end local v9    # "pref":Landroid/preference/Preference;
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 339
    return-void
.end method


# virtual methods
.method public dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x80

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 129
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 130
    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v8, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    :goto_0
    iput-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 132
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 134
    .local v4, "value":I
    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v5, :cond_7

    if-lez v4, :cond_7

    move v5, v7

    :goto_1
    iput-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 136
    .end local v4    # "value":I
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 138
    .restart local v4    # "value":I
    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v5, :cond_8

    if-lez v4, :cond_8

    move v5, v7

    :goto_2
    iput-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 140
    .end local v4    # "value":I
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 141
    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :goto_3
    iput-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 143
    :cond_3
    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsOwnerOnly:Z

    if-eqz v5, :cond_4

    .line 144
    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v5, :cond_b

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_a

    move v5, v6

    .line 144
    :goto_4
    iput-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 147
    :cond_4
    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsValidIntent:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    if-eqz v5, :cond_10

    .line 148
    :cond_5
    if-nez p3, :cond_c

    .line 149
    return v6

    :cond_6
    move v5, v6

    .line 130
    goto :goto_0

    .restart local v4    # "value":I
    :cond_7
    move v5, v6

    .line 134
    goto :goto_1

    :cond_8
    move v5, v6

    .line 138
    goto :goto_2

    .end local v4    # "value":I
    :cond_9
    move v5, v6

    .line 141
    goto :goto_3

    :cond_a
    move v5, v7

    .line 145
    goto :goto_4

    :cond_b
    move v5, v6

    .line 144
    goto :goto_4

    .line 153
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 154
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 155
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 156
    :cond_d
    invoke-virtual {v1, p3, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 158
    :cond_e
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 159
    :cond_f
    iput-boolean v6, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 177
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_10
    :goto_5
    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    return v5

    .line 163
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_11
    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    if-eqz v5, :cond_10

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v7, :cond_12

    .line 165
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 166
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v5, "SomcPreferences"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 167
    const-string/jumbo v8, " has more than one intent for metadata in:"

    .line 166
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 168
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 166
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 173
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 174
    .restart local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v1, v2, p2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->parseMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/preference/Preference;)V

    goto :goto_5
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAfter:Ljava/lang/String;

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mBefore:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mParent:Ljava/lang/String;

    return-object v0
.end method
