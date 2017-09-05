.class public Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;
.super Landroid/view/ViewGroup;
.source "ClockHand.java"


# instance fields
.field private mHandType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->mHandType:I

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->applyAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private applyAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 77
    sget-object v2, Lcom/android/keyguard/R$styleable;->ClockHand:[I

    .line 76
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "attributes":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/android/keyguard/R$styleable;->ClockHand_handType:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->mHandType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void

    .line 80
    :catchall_0
    move-exception v1

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    throw v1
.end method

.method private centerChildAroundPivot(IILandroid/view/View;I)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "child"    # Landroid/view/View;
    .param p4, "adjustment"    # I

    .prologue
    const/4 v5, 0x0

    .line 135
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-nez v4, :cond_0

    .line 136
    invoke-virtual {p3, v5, v5}, Landroid/view/View;->measure(II)V

    .line 138
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 139
    .local v3, "childWidth":I
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 140
    .local v0, "childHeight":I
    invoke-virtual {p3}, Landroid/view/View;->getPivotX()F

    move-result v4

    float-to-int v1, v4

    .line 141
    .local v1, "childPivotX":I
    invoke-virtual {p3}, Landroid/view/View;->getPivotY()F

    move-result v4

    float-to-int v2, v4

    .line 142
    .local v2, "childPivotY":I
    instance-of v4, p3, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 147
    :cond_1
    div-int/lit8 v4, p1, 0x2

    sub-int/2addr v4, v1

    div-int/lit8 v5, p2, 0x2

    sub-int/2addr v5, v2

    sub-int/2addr v5, p4

    .line 148
    div-int/lit8 v6, p1, 0x2

    sub-int/2addr v6, v1

    add-int/2addr v6, v3

    .line 149
    div-int/lit8 v7, p2, 0x2

    sub-int/2addr v7, v2

    add-int/2addr v7, v0

    sub-int/2addr v7, p4

    .line 147
    invoke-virtual {p3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 134
    return-void
.end method

.method private padImageView(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 126
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 127
    check-cast v0, Landroid/widget/ImageView;

    .line 128
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 125
    .end local v0    # "image":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method


# virtual methods
.method public getHandType()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->mHandType:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->getChildCount()I

    move-result v1

    .line 112
    .local v1, "nbrOfChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->padImageView(Landroid/view/View;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 109
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 96
    sub-int v4, p4, p2

    .line 97
    .local v4, "width":I
    sub-int v1, p5, p3

    .line 99
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->getChildCount()I

    move-result v3

    .line 100
    .local v3, "nbrOfChildren":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 101
    invoke-virtual {p0, v2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 103
    const/4 v5, 0x0

    invoke-direct {p0, v4, v1, v0, v5}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ClockHand;->centerChildAroundPivot(IILandroid/view/View;I)V

    .line 100
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method
