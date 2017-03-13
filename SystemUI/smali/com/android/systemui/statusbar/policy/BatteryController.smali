.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;,
        Lcom/android/systemui/statusbar/policy/BatteryController$SettingObserver;,
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryPercentCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCharged:Z

.field private mCharging:Z

.field private mContext:Landroid/content/Context;

.field private mLevel:I

.field private final mPercentCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryPercentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPluggedIn:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSave:Z

.field private final mSettingObserver:Lcom/android/systemui/statusbar/policy/BatteryController$SettingObserver;

.field private mShowPercent:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateShowPercent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "BatteryController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentCallbacks:Ljava/util/ArrayList;

    .line 66
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$SettingObserver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BatteryController$SettingObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mSettingObserver:Lcom/android/systemui/statusbar/policy/BatteryController$SettingObserver;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 71
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerManager:Landroid/os/PowerManager;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updatePowerSave()V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 82
    const-string/jumbo v2, "status_bar_show_battery_percent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mSettingObserver:Lcom/android/systemui/statusbar/policy/BatteryController$SettingObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 81
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 84
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryController$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateShowPercent()V

    .line 69
    return-void
.end method

.method private fireBatteryLevelChanged()V
    .locals 6

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 151
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method private firePowerSaveChanged()V
    .locals 3

    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 158
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged()V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method private fireShowPercentChanged()V
    .locals 3

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 191
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryPercentCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryPercentCallback;->onShowPercentChanged()V

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method private setPowerSave(Z)V
    .locals 3
    .param p1, "powerSave"    # Z

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 144
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    .line 145
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v1, "BatteryController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Power save is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "on"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->firePowerSaveChanged()V

    .line 142
    return-void

    .line 145
    :cond_2
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method private updatePowerSave()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->setPowerSave(Z)V

    .line 138
    return-void
.end method

.method private updateShowPercent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 202
    const-string/jumbo v2, "status_bar_show_battery_percent"

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v3}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    .line 201
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 203
    .local v0, "showPercent":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mShowPercent:Z

    if-eq v1, v0, :cond_0

    .line 204
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mShowPercent:Z

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->fireShowPercentChanged()V

    .line 200
    :cond_0
    return-void

    .line 201
    .end local v0    # "showPercent":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "showPercent":Z
    goto :goto_0
.end method


# virtual methods
.method public addPercentCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryPercentCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryPercentCallback;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryPercentCallback;->onShowPercentChanged()V

    .line 174
    return-void
.end method

.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 103
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v0, "BatteryController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "  mLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 97
    const-string/jumbo v0, "  mPluggedIn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 98
    const-string/jumbo v0, "  mCharging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 99
    const-string/jumbo v0, "  mCharged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 100
    const-string/jumbo v0, "  mPowerSave="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 94
    return-void
.end method

.method public isPowerSave()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 116
    const-string/jumbo v3, "level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    .line 115
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v3, v6

    .line 117
    const-string/jumbo v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    int-to-float v6, v6

    .line 115
    div-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    .line 118
    const-string/jumbo v3, "plugged"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, "plugType":I
    const-string/jumbo v3, "plugged"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    .line 121
    const-string/jumbo v3, "status"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 123
    .local v2, "status":I
    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharged:Z

    .line 124
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharged:Z

    if-nez v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_0
    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->fireBatteryLevelChanged()V

    .line 112
    .end local v1    # "plugType":I
    .end local v2    # "status":I
    :cond_1
    :goto_3
    return-void

    .restart local v1    # "plugType":I
    :cond_2
    move v3, v5

    .line 119
    goto :goto_0

    .restart local v2    # "status":I
    :cond_3
    move v3, v5

    .line 123
    goto :goto_1

    :cond_4
    move v4, v5

    .line 124
    goto :goto_2

    .line 127
    .end local v1    # "plugType":I
    .end local v2    # "status":I
    :cond_5
    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updatePowerSave()V

    goto :goto_3

    .line 129
    :cond_6
    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    const-string/jumbo v3, "mode"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setPowerSave(Z)V

    goto :goto_3
.end method

.method public removePercentCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryPercentCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryPercentCallback;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public showPercent()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mShowPercent:Z

    return v0
.end method
