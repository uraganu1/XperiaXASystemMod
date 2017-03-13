.class public Lcom/android/systemui/tuner/TunerService;
.super Lcom/android/systemui/SystemUI;
.source "TunerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerService$Observer;,
        Lcom/android/systemui/tuner/TunerService$Tunable;,
        Lcom/android/systemui/tuner/TunerService$ClearReceiver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/tuner/TunerService;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentUser:I

.field private final mListeningUris:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Lcom/android/systemui/tuner/TunerService$Observer;

.field private final mTunableLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/tuner/TunerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/tuner/TunerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerService;->reloadAll()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 55
    new-instance v0, Lcom/android/systemui/tuner/TunerService$Observer;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerService$Observer;-><init>(Lcom/android/systemui/tuner/TunerService;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mObserver:Lcom/android/systemui/tuner/TunerService$Observer;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mListeningUris:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method private addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;Ljava/lang/String;)V
    .locals 6
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 94
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerService;->mObserver:Lcom/android/systemui/tuner/TunerService$Observer;

    iget v4, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "value":Ljava/lang/String;
    invoke-interface {p1, p2, v1}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    .line 165
    .local v1, "sysUi":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 166
    .local v0, "service":Lcom/android/systemui/tuner/TunerService;
    if-nez v0, :cond_0

    .line 168
    invoke-static {p0}, Lcom/android/systemui/tuner/TunerService;->getStaticService(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    return-object v2

    .line 170
    :cond_0
    return-object v0
.end method

.method private static getStaticService(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    sget-object v0, Lcom/android/systemui/tuner/TunerService;->sInstance:Lcom/android/systemui/tuner/TunerService;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/android/systemui/tuner/TunerService;

    invoke-direct {v0}, Lcom/android/systemui/tuner/TunerService;-><init>()V

    sput-object v0, Lcom/android/systemui/tuner/TunerService;->sInstance:Lcom/android/systemui/tuner/TunerService;

    .line 176
    sget-object v0, Lcom/android/systemui/tuner/TunerService;->sInstance:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    .line 177
    sget-object v0, Lcom/android/systemui/tuner/TunerService;->sInstance:Lcom/android/systemui/tuner/TunerService;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tuner/TunerService;->mComponents:Ljava/util/Map;

    .line 178
    sget-object v0, Lcom/android/systemui/tuner/TunerService;->sInstance:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/TunerService;->start()V

    .line 180
    :cond_0
    sget-object v0, Lcom/android/systemui/tuner/TunerService;->sInstance:Lcom/android/systemui/tuner/TunerService;

    return-object v0
.end method

.method public static final isTunerEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 217
    invoke-static {p0}, Lcom/android/systemui/tuner/TunerService;->userContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 218
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/systemui/tuner/TunerActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reloadAll()V
    .locals 7

    .prologue
    .line 128
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 130
    iget v6, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    .line 129
    invoke-static {v5, v0, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "tunable$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 132
    .local v2, "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    invoke-interface {v2, v0, v4}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    .end local v3    # "tunable$iterator":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static final setTunerEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 209
    invoke-static {p0}, Lcom/android/systemui/tuner/TunerService;->userContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 210
    new-instance v3, Landroid/content/ComponentName;

    const-class v0, Lcom/android/systemui/tuner/TunerActivity;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    if-eqz p1, :cond_0

    move v0, v1

    .line 209
    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 208
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static final showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onDisabled"    # Ljava/lang/Runnable;

    .prologue
    .line 184
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "dialog":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 186
    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 187
    const v1, 0x7f0900ce

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    .line 187
    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 190
    const v1, 0x7f0901c3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/tuner/TunerService$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/tuner/TunerService$2;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 189
    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 205
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 183
    return-void
.end method

.method private static userContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 224
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object p0
.end method


# virtual methods
.method public varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .locals 3
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 83
    const/4 v1, 0x0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 84
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;Ljava/lang/String;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 139
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "sysui_demo_allowed"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "status_bar_show_battery_percent"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.systemui.demo"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "command"

    const-string/jumbo v6, "exit"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 147
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_2

    .line 148
    iget v5, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    invoke-virtual {v0, v7, v5}, Landroid/app/admin/DevicePolicyManager;->isSettingsDisabled(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 150
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 151
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v5, "sysui_qs_tiles"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    .line 156
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget v6, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    invoke-static {v5, v3, v7, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 147
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    .local v2, "isRestrictedByDpm":Z
    goto :goto_0

    .line 137
    .end local v2    # "isRestrictedByDpm":Z
    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public reloadSetting(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 120
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerService;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget v5, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tunable$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 123
    .local v1, "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    invoke-interface {v1, v0, v3}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v1    # "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    :cond_0
    return-void
.end method

.method public removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .locals 3
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "list$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/tuner/TunerService$Tunable;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/tuner/TunerService$Tunable;>;"
    :cond_0
    return-void
.end method

.method protected reregisterAll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 110
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerService;->mObserver:Lcom/android/systemui/tuner/TunerService$Observer;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 114
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 115
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerService;->mObserver:Lcom/android/systemui/tuner/TunerService$Observer;

    iget v4, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 109
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/tuner/TunerService;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    .line 71
    new-instance v0, Lcom/android/systemui/tuner/TunerService$1;

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService$1;-><init>(Lcom/android/systemui/tuner/TunerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 66
    return-void
.end method
