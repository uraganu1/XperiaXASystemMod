.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;
.super Ljava/lang/Object;
.source "KeyguardStatusViewHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addClockPluginView(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "linearClockLayout"    # Landroid/widget/LinearLayout;
    .param p1, "clockPluginView"    # Landroid/view/ViewGroup;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 139
    :cond_0
    return-void
.end method

.method public static createKeyguardPluginFactoryForUser(ILandroid/content/Context;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;
    .locals 5
    .param p0, "userId"    # I
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;

    .line 87
    new-instance v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-direct {v3, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v4, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;

    invoke-direct {v4, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-direct {v0, v3, v4}, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;-><init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;)V

    .line 91
    .local v0, "defaultKeyguardFactoryProvider":Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;
    new-instance v2, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;

    .line 92
    new-instance v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-direct {v3, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v4, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;

    invoke-direct {v4, v1, p0}, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;-><init>(Landroid/content/ContentResolver;I)V

    .line 91
    invoke-direct {v2, v3, v4, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;-><init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;)V

    .line 96
    .local v2, "userSelectionHandler":Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;
    new-instance v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    invoke-direct {v3, p1, v0, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;)V

    return-object v3
.end method

.method public static getClippingSources(Landroid/view/ViewGroup;)Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
    .locals 2
    .param p0, "clockPluginView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 166
    if-eqz p0, :cond_0

    .line 167
    instance-of v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourcesProvider;

    .line 166
    if-eqz v0, :cond_0

    .line 168
    check-cast p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourcesProvider;

    .end local p0    # "clockPluginView":Landroid/view/ViewGroup;
    invoke-interface {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourcesProvider;->getClippingSources()Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    move-result-object v0

    return-object v0

    .line 171
    .restart local p0    # "clockPluginView":Landroid/view/ViewGroup;
    :cond_0
    return-object v1
.end method

.method public static getLeftAlignAnimationTargets(Landroid/view/ViewGroup;)Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;
    .locals 2
    .param p0, "clockPluginView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 152
    if-eqz p0, :cond_0

    .line 153
    instance-of v0, p0, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargetsProvider;

    .line 152
    if-eqz v0, :cond_0

    .line 154
    check-cast p0, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargetsProvider;

    .end local p0    # "clockPluginView":Landroid/view/ViewGroup;
    invoke-interface {p0}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargetsProvider;->getLeftAlignAnimationTargets()Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    move-result-object v0

    return-object v0

    .line 157
    .restart local p0    # "clockPluginView":Landroid/view/ViewGroup;
    :cond_0
    return-object v1
.end method

.method public static loadCurrentClock(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyguardPluginFactoryLoader"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;
    .param p2, "clockPluginView"    # Landroid/view/ViewGroup;
    .param p3, "linearClockLayout"    # Landroid/widget/LinearLayout;
    .param p4, "digitalClockContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    invoke-static {p3, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->removeClockPluginView(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    .line 44
    invoke-virtual {p1, p3}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->createKeyguardClockView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p2

    .line 46
    invoke-static {p2, p3, p4}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->showCurrentClock(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    .line 48
    return-object p2
.end method

.method private static removeClockPluginView(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "linearClockLayout"    # Landroid/widget/LinearLayout;
    .param p1, "clockPluginView"    # Landroid/view/ViewGroup;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-static {p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->stopClockTicking(Landroid/view/ViewGroup;)V

    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 124
    :cond_0
    return-void
.end method

.method public static setNextAlarm(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1
    .param p0, "clockPluginView"    # Landroid/view/ViewGroup;
    .param p1, "alarm"    # Ljava/lang/String;

    .prologue
    .line 107
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v0, :cond_0

    .line 108
    check-cast p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    .end local p0    # "clockPluginView":Landroid/view/ViewGroup;
    invoke-interface {p0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->setNextAlarmText(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public static setOnDrawingUpdatedCallback(Landroid/view/ViewGroup;Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;)V
    .locals 1
    .param p0, "clockPluginView"    # Landroid/view/ViewGroup;
    .param p1, "callback"    # Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    .prologue
    .line 181
    if-eqz p0, :cond_0

    .line 182
    instance-of v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourcesProvider;

    .line 181
    if-eqz v0, :cond_0

    .line 183
    check-cast p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourcesProvider;

    .end local p0    # "clockPluginView":Landroid/view/ViewGroup;
    invoke-interface {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourcesProvider;->setOnDrawingUpdatedCallback(Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;)V

    .line 180
    :cond_0
    return-void
.end method

.method private static setVisibilityOnKeyguardStatusViews(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p0, "digitalClockContainer"    # Landroid/view/ViewGroup;
    .param p1, "visibility"    # I

    .prologue
    .line 133
    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 132
    :cond_0
    return-void
.end method

.method private static showCurrentClock(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "clockPluginView"    # Landroid/view/ViewGroup;
    .param p1, "linearClockLayout"    # Landroid/widget/LinearLayout;
    .param p2, "digitalClockContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 115
    if-eqz p0, :cond_0

    .line 116
    invoke-static {p1, p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->addClockPluginView(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    .line 117
    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setVisibilityOnKeyguardStatusViews(Landroid/view/ViewGroup;I)V

    .line 113
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardStatusViewHelper;->setVisibilityOnKeyguardStatusViews(Landroid/view/ViewGroup;I)V

    goto :goto_0
.end method

.method public static startClockTicking(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "clockPluginView"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    .end local p0    # "clockPluginView":Landroid/view/ViewGroup;
    invoke-interface {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->startClockTicking()V

    .line 57
    :cond_0
    return-void
.end method

.method public static stopClockTicking(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "clockPluginView"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    if-eqz v0, :cond_0

    .line 70
    check-cast p0, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;

    .end local p0    # "clockPluginView":Landroid/view/ViewGroup;
    invoke-interface {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;->stopClockTicking()V

    .line 68
    :cond_0
    return-void
.end method
