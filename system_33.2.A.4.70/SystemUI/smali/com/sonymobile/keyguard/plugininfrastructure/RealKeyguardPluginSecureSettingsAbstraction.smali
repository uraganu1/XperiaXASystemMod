.class public Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;
.super Ljava/lang/Object;
.source "RealKeyguardPluginSecureSettingsAbstraction.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ContentResolver may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    .line 47
    iput p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    .line 41
    return-void
.end method


# virtual methods
.method public getExplicitlySelectedKeyguardPlugin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    .line 57
    const-string/jumbo v1, "somc.lockscreen.active.clock_factory"

    iget v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    .line 56
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExplicitlySelectedKeyguardPluginValueUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "somc.lockscreen.active.clock_factory"

    .line 103
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackKeyguardPlugin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    .line 85
    const-string/jumbo v1, "somc.lockscreen.active.clock_factory_fallback"

    iget v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    .line 84
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExplicitlySelectedKeyguardPlugin(Ljava/lang/String;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;)V
    .locals 4
    .param p1, "fullyQualifiedClassName"    # Ljava/lang/String;
    .param p2, "source"    # Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    const-string/jumbo v1, "somc.lockscreen.active.clock_factory.source"

    invoke-virtual {p2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->name()Ljava/lang/String;

    move-result-object v2

    .line 68
    iget v3, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    .line 66
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 69
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    .line 70
    const-string/jumbo v1, "somc.lockscreen.active.clock_factory.source"

    .line 71
    sget-object v2, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->LockscreenClockPicker:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    invoke-virtual {v2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->name()Ljava/lang/String;

    move-result-object v2

    .line 73
    iget v3, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    .line 69
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 74
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    .line 75
    const-string/jumbo v1, "somc.lockscreen.active.clock_factory"

    .line 76
    iget v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    .line 74
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 65
    return-void
.end method

.method public setFallbackKeyguardPlugin(Ljava/lang/String;)V
    .locals 3
    .param p1, "fullyQualifiedClassName"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    .line 94
    const-string/jumbo v1, "somc.lockscreen.active.clock_factory_fallback"

    .line 95
    iget v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    .line 93
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 92
    return-void
.end method
