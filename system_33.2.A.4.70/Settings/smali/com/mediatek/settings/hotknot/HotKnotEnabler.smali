.class public final Lcom/mediatek/settings/hotknot/HotKnotEnabler;
.super Ljava/lang/Object;
.source "HotKnotEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/hotknot/HotKnotEnabler$1;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUpdateStatusOnly:Z

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 24
    new-instance v0, Lcom/mediatek/settings/hotknot/HotKnotEnabler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler$1;-><init>(Lcom/mediatek/settings/hotknot/HotKnotEnabler;)V

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    iput-object p1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 40
    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    .line 42
    iput-boolean v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mValidListener:Z

    .line 43
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/hotknot/HotKnotAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    .line 44
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->setupSwitchBar()V

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.mediatek.hotknot.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 37
    return-void
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 99
    packed-switch p1, :pswitch_data_0

    .line 117
    invoke-direct {p0, v3}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->setSwitchChecked(Z)V

    .line 118
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 98
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iput-boolean v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 102
    const-string/jumbo v0, "@M_HotKnotEnabler"

    const-string/jumbo v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, v2}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->setSwitchChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 105
    iput-boolean v3, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 106
    const-string/jumbo v0, "@M_HotKnotEnabler"

    const-string/jumbo v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :pswitch_1
    iput-boolean v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 110
    const-string/jumbo v0, "@M_HotKnotEnabler"

    const-string/jumbo v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0, v3}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->setSwitchChecked(Z)V

    .line 112
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 113
    iput-boolean v3, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 114
    const-string/jumbo v0, "@M_HotKnotEnabler"

    const-string/jumbo v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 86
    const-string/jumbo v0, "@M_HotKnotEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    const-string/jumbo v2, ", mUpdateStatusOnly is "

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    iget-boolean v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 85
    return-void

    .line 89
    :cond_1
    if-eqz p2, :cond_2

    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->enable()Z

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mValidListener:Z

    .line 74
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 62
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 64
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->handleStateChanged(I)V

    .line 70
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    iput-boolean v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mValidListener:Z

    .line 61
    return-void

    :cond_1
    move v0, v1

    .line 68
    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 51
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 56
    return-void
.end method
