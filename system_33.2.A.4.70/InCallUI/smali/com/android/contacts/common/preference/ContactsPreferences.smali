.class public final Lcom/android/contacts/common/preference/ContactsPreferences;
.super Ljava/lang/Object;
.source "ContactsPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayOrder:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private mSortOrder:I


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/preference/ContactsPreferences;)Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/contacts/common/preference/ContactsPreferences;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/contacts/common/preference/ContactsPreferences;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    .line 66
    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    .line 72
    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    .line 74
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 75
    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 76
    invoke-direct {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->maybeMigrateSystemSettings()V

    .line 71
    return-void
.end method

.method private maybeMigrateSystemSettings()V
    .locals 5

    .prologue
    .line 185
    iget-object v3, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "android.contacts.SORT_ORDER"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v2

    .line 188
    .local v2, "sortOrder":I
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 189
    const-string/jumbo v4, "android.contacts.SORT_ORDER"

    .line 188
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 192
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->setSortOrder(I)V

    .line 195
    .end local v2    # "sortOrder":I
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "android.contacts.DISPLAY_ORDER"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v0

    .line 198
    .local v0, "displayOrder":I
    :try_start_1
    iget-object v3, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 199
    const-string/jumbo v4, "android.contacts.DISPLAY_ORDER"

    .line 198
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 202
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDisplayOrder(I)V

    .line 184
    .end local v0    # "displayOrder":I
    :cond_1
    return-void

    .line 200
    .restart local v0    # "displayOrder":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_1

    .line 190
    .end local v0    # "displayOrder":I
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2    # "sortOrder":I
    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public getDefaultDisplayOrder()I
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getDefaultSortOrder()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getDisplayOrder()I
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isDisplayOrderUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v0

    return v0

    .line 124
    :cond_0
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 127
    :cond_1
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    return v0
.end method

.method public getSortOrder()I
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isSortOrderUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v0

    return v0

    .line 95
    :cond_0
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "android.contacts.SORT_ORDER"

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    .line 98
    :cond_1
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    return v0
.end method

.method public isDisplayOrderUserChangeable()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSortOrderUserChangeable()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/common/preference/ContactsPreferences$1;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/common/preference/ContactsPreferences$1;-><init>(Lcom/android/contacts/common/preference/ContactsPreferences;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 2
    .param p1, "displayOrder"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 132
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "android.contacts.DISPLAY_ORDER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method public setSortOrder(I)V
    .locals 2
    .param p1, "sortOrder"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    .line 103
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "android.contacts.SORT_ORDER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method
