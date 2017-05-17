.class public final Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
.super Landroid/database/ContentObserver;
.source "ContactsPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;
    }
.end annotation


# static fields
.field private static sInstance:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mConfig:Lcom/sonyericsson/android/socialphonebook/Configuration;

.field private mContext:Landroid/content/Context;

.field private mDisplayOrder:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

.field private mSortOrder:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mDisplayOrder:I

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mSortOrder:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->sInstance:Ljava/lang/ref/SoftReference;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 57
    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 44
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mSortOrder:I

    .line 46
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mDisplayOrder:I

    .line 50
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mConfig:Lcom/sonyericsson/android/socialphonebook/Configuration;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method private getDefaultDisplayOrder()I
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private getDefaultSortOrder()I
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    .locals 3
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    const-class v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    monitor-enter v2

    .line 69
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->sInstance:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 70
    :goto_0
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "contactsPreferences":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->sInstance:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "contactsPreferences":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    :cond_0
    monitor-exit v2

    .line 75
    return-object v0

    .line 69
    :cond_1
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->sInstance:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "contactsPreferences":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    goto :goto_0

    .end local v0    # "contactsPreferences":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getDisplayOrder()I
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->isDisplayOrderUserChangeable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v1

    return v1

    .line 144
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mDisplayOrder:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 147
    const-string/jumbo v2, "android.contacts.DISPLAY_ORDER"

    .line 146
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mDisplayOrder:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mDisplayOrder:I

    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mConfig:Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getDisplayOrder()I

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mConfig:Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getDisplayOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->setDisplayOrder(I)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->setDisplayOrder(I)V

    goto :goto_0
.end method

.method public getSortOrder()I
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->isSortOrderUserChangeable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    return v1

    .line 100
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mSortOrder:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 103
    const-string/jumbo v2, "android.contacts.SORT_ORDER"

    .line 102
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mSortOrder:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_1
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mSortOrder:I

    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mConfig:Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getSortOrder()I

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mConfig:Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getSortOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->setSortOrder(I)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->setSortOrder(I)V

    goto :goto_0
.end method

.method public isDisplayOrderUserChangeable()Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mConfig:Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isDisplayOrderDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isSortOrderUserChangeable()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mConfig:Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isSortOrderDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method public registerChangeListener(Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->unregisterChangeListener()V

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

    .line 173
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mDisplayOrder:I

    .line 174
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mSortOrder:I

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "android.contacts.SORT_ORDER"

    .line 178
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    const-string/jumbo v1, "android.contacts.DISPLAY_ORDER"

    .line 181
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 2
    .param p1, "displayOrder"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mDisplayOrder:I

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    const-string/jumbo v1, "android.contacts.DISPLAY_ORDER"

    .line 161
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    return-void
.end method

.method public setSortOrder(I)V
    .locals 2
    .param p1, "sortOrder"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mSortOrder:I

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "android.contacts.SORT_ORDER"

    .line 117
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    return-void
.end method

.method public unregisterChangeListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 188
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

    .line 185
    :cond_0
    return-void
.end method
