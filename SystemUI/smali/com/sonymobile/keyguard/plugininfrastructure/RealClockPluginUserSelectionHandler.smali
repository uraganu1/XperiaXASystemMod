.class public Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;
.super Ljava/lang/Object;
.source "RealClockPluginUserSelectionHandler.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;


# instance fields
.field private final mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

.field private final mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

.field private final mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;


# direct methods
.method public constructor <init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;)V
    .locals 0
    .param p1, "keyguardPluginMetaDataLoader"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;
    .param p2, "keyguardPluginSecureSettingsAbstraction"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;
    .param p3, "defaultKeyguardFactoryProvider"    # Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    .line 50
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    .line 51
    iput-object p3, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    .line 48
    return-void
.end method

.method private updateLastPresentableSelectionStore()V
    .locals 3

    .prologue
    .line 86
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->getExplicitlySelectedKeyguardPlugin()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "fallback":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    invoke-interface {v2}, Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;->getDefaultKeyguardFactoryClassName()Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-virtual {v2, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getFactoryEntryFromClassName(Ljava/lang/String;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object v0

    .line 96
    .local v0, "entry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->selectableByThemes:Z

    if-eqz v2, :cond_2

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {v2, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->setFallbackKeyguardPlugin(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getPresentableUserSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->getExplicitlySelectedKeyguardPlugin()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "selectedPlugin":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-virtual {v2, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getFactoryEntryFromClassName(Ljava/lang/String;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object v0

    .line 76
    .local v0, "entry":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->enabled:Z

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->getFallbackKeyguardPlugin()Ljava/lang/String;

    move-result-object v1

    .line 79
    sget-object v2, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->Fallback:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    .line 78
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->updateUserSelection(Ljava/lang/String;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;)V

    goto :goto_0
.end method

.method public updateUserSelection(Ljava/lang/String;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;)V
    .locals 1
    .param p1, "fullyQualifiedClassName"    # Ljava/lang/String;
    .param p2, "source"    # Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->updateLastPresentableSelectionStore()V

    .line 61
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->setExplicitlySelectedKeyguardPlugin(Ljava/lang/String;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;)V

    .line 59
    return-void
.end method
