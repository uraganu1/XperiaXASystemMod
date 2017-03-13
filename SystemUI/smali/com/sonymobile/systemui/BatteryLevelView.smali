.class public Lcom/sonymobile/systemui/BatteryLevelView;
.super Landroid/widget/TextView;
.source "BatteryLevelView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryPercentCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mDemoMode:Z

.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/systemui/BatteryLevelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/BatteryLevelView;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/systemui/BatteryLevelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/systemui/BatteryLevelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private updatePercent(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 98
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "percent":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/BatteryLevelView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-boolean v1, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mDemoMode:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "enter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mDemoMode:Z

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-boolean v1, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mDemoMode:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "exit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iput-boolean v2, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mDemoMode:Z

    .line 88
    iget v1, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mLevel:I

    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/BatteryLevelView;->updatePercent(I)V

    goto :goto_0

    .line 89
    :cond_2
    iget-boolean v1, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mDemoMode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "battery"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string/jumbo v1, "level"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "level":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/BatteryLevelView;->updatePercent(I)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 44
    iget-object v0, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 46
    iget-object v0, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addPercentCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryPercentCallback;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 66
    iput p1, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mLevel:I

    .line 67
    iget-boolean v0, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mDemoMode:Z

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/BatteryLevelView;->updatePercent(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 54
    iget-object v0, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 56
    iget-object v0, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removePercentCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryPercentCallback;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onShowPercentChanged()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->showPercent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/BatteryLevelView;->setVisibility(I)V

    .line 78
    return-void

    .line 79
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonymobile/systemui/BatteryLevelView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 60
    return-void
.end method
