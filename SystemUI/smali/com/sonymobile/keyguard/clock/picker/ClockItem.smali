.class public Lcom/sonymobile/keyguard/clock/picker/ClockItem;
.super Landroid/widget/LinearLayout;
.source "ClockItem.java"


# instance fields
.field private mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method private getBackPlateSize()I
    .locals 3

    .prologue
    .line 96
    sget v2, Lcom/android/keyguard/R$id;->somc_keyguard_clock_back_plate:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "backPlateView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 100
    .local v1, "backPlateViewParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return v2
.end method

.method private initView(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V
    .locals 4
    .param p1, "controller"    # Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    .prologue
    .line 63
    sget v3, Lcom/android/keyguard/R$id;->somc_keyguard_clock_back_plate:I

    invoke-virtual {p0, v3}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 64
    .local v0, "backPlate":Landroid/widget/FrameLayout;
    sget v3, Lcom/android/keyguard/R$id;->somc_keyguard_clock_name:I

    invoke-virtual {p0, v3}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 65
    .local v2, "nameView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    invoke-virtual {p1, v3}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->createClockView(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, "clockView":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 68
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 70
    iget-object v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    iget-object v3, v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public getClock()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    return-object v0
.end method

.method public getPageWidthInPixels()I
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 88
    .local v0, "itemViewParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->getBackPlateSize()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public initWithClock(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V
    .locals 0
    .param p1, "clock"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .param p2, "controller"    # Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->mClock:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .line 58
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockItem;->initView(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V

    .line 56
    return-void
.end method
