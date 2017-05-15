.class public Lcom/android/settings/AppListPreference;
.super Landroid/preference/ListPreference;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppListPreference$AppArrayAdapter;,
        Lcom/android/settings/AppListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field mExt:Lcom/mediatek/settings/ext/IAppListExt;

.field private mShowItemNone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 91
    return-void
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 9

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, "selectedValue":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 154
    iget-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 155
    :goto_0
    if-eqz v7, :cond_2

    const/4 v6, -0x1

    .line 156
    .local v6, "selectedIndex":I
    :goto_1
    new-instance v0, Lcom/android/settings/AppListPreference$AppArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const v3, 0x7f040010

    move-object v1, p0

    .line 156
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/AppListPreference$AppArrayAdapter;-><init>(Lcom/android/settings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    return-object v0

    .line 153
    .end local v6    # "selectedIndex":I
    :cond_0
    const/4 v7, 0x1

    .local v7, "selectedNone":Z
    goto :goto_0

    .line 154
    .end local v7    # "selectedNone":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "selectedNone":Z
    goto :goto_0

    .line 155
    .end local v7    # "selectedNone":Z
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/settings/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .restart local v6    # "selectedIndex":I
    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 161
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 174
    instance-of v1, p1, Lcom/android/settings/AppListPreference$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 175
    check-cast v0, Lcom/android/settings/AppListPreference$SavedState;

    .line 176
    .local v0, "savedState":Lcom/android/settings/AppListPreference$SavedState;
    iget-boolean v1, v0, Lcom/android/settings/AppListPreference$SavedState;->showItemNone:Z

    iput-boolean v1, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 177
    iget-object v1, v0, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, v0, Lcom/android/settings/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 173
    .end local v0    # "savedState":Lcom/android/settings/AppListPreference$SavedState;
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 168
    invoke-super {p0}, Landroid/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 169
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/settings/AppListPreference$SavedState;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settings/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V

    return-object v1
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 13
    .param p1, "packageNames"    # [Ljava/lang/CharSequence;
    .param p2, "defaultPackageName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 106
    .local v6, "pm":Landroid/content/pm/PackageManager;
    array-length v10, p1

    iget-boolean v11, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v11, :cond_0

    const/4 v9, 0x1

    :cond_0
    add-int v3, v10, v9

    .line 107
    .local v3, "entryCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v1, "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .local v8, "validatedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v4, "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    const/4 v7, -0x1

    .line 111
    .local v7, "selectedIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, p1

    if-ge v5, v9, :cond_3

    .line 113
    :try_start_0
    aget-object v9, p1, v5

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 115
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/android/settings/AppListPreference;->mExt:Lcom/mediatek/settings/ext/IAppListExt;

    if-nez v9, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/settings/UtilsExt;->getAppListPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAppListExt;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/AppListPreference;->mExt:Lcom/mediatek/settings/ext/IAppListExt;

    .line 118
    :cond_1
    iget-object v9, p0, Lcom/android/settings/AppListPreference;->mExt:Lcom/mediatek/settings/ext/IAppListExt;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v5}, Lcom/mediatek/settings/ext/IAppListExt;->setAppListItem(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    if-eqz p2, :cond_2

    .line 124
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 123
    if-eqz v9, :cond_2

    .line 125
    move v7, v5

    .line 111
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 132
    :cond_3
    iget-boolean v9, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v9, :cond_4

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0b8f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 133
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const-string/jumbo v9, ""

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0200a2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-interface {v1, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v9}, Lcom/android/settings/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 141
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {p0, v9}, Lcom/android/settings/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 142
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v4, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 144
    const/4 v9, -0x1

    if-eq v7, v9, :cond_5

    .line 145
    invoke-virtual {p0, v7}, Lcom/android/settings/AppListPreference;->setValueIndex(I)V

    .line 103
    :goto_2
    return-void

    .line 147
    :cond_5
    invoke-virtual {p0, v12}, Lcom/android/settings/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 127
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public setShowItemNone(Z)V
    .locals 0
    .param p1, "showItemNone"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 99
    return-void
.end method
