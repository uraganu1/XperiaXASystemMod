.class public Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClockPluginFactory;
.super Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;
.source "ThemeableAnalogClockPluginFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClockPluginFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/android/keyguard/R$layout;->somc_themeable_analog_clock_view:I

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1
.end method

.method protected getClockView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    sget v0, Lcom/android/keyguard/R$id;->somc_themeable_analog_clock:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
