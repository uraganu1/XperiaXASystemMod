.class public Lcom/mediatek/settings/hotknot/HotKnotSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HotKnotSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/hotknot/HotKnotSettings$1;,
        Lcom/mediatek/settings/hotknot/HotKnotSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

.field private mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/mediatek/settings/hotknot/HotKnotSettings$2;

    invoke-direct {v0}, Lcom/mediatek/settings/hotknot/HotKnotSettings$2;-><init>()V

    .line 117
    sput-object v0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 42
    new-instance v0, Lcom/mediatek/settings/hotknot/HotKnotSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings$1;-><init>(Lcom/mediatek/settings/hotknot/HotKnotSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x186a3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 60
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-static {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/hotknot/HotKnotAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    .line 61
    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v1, :cond_0

    .line 62
    const-string/jumbo v1, "@M_HotKnotSettings"

    const-string/jumbo v2, "Hotknot adapter is null, finish Hotknot settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 66
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.mediatek.hotknot.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 83
    const v2, 0x7f04007c

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1300e4

    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 87
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 88
    const v3, 0x7f0b0127

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/hotknot/HotKnotSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 87
    const v3, 0x7f0b0129

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/settings/hotknot/HotKnotSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 96
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->teardownSwitchBar()V

    .line 94
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->pause()V

    .line 109
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->resume()V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 74
    invoke-virtual {p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 75
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 76
    const-string/jumbo v1, "@M_HotKnotSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate, mSwitchBar = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v1, Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    iget-object v2, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    .line 70
    return-void
.end method
