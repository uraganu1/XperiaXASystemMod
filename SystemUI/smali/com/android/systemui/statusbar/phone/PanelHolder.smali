.class public Lcom/android/systemui/statusbar/phone/PanelHolder;
.super Landroid/widget/FrameLayout;
.source "PanelHolder.java"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mSelectedPanelIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelHolder;->mSelectedPanelIndex:I

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setChildrenDrawingOrderEnabled(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 59
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelHolder;->mSelectedPanelIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 60
    return p2

    .line 62
    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    .line 63
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelHolder;->mSelectedPanelIndex:I

    return v0

    .line 64
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelHolder;->mSelectedPanelIndex:I

    if-lt p2, v0, :cond_2

    .line 65
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 67
    :cond_2
    return p2
.end method

.method public getPanelIndex(Lcom/android/systemui/statusbar/phone/PanelView;)I
    .locals 4
    .param p1, "pv"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getChildCount()I

    move-result v0

    .line 46
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 48
    .local v2, "v":Lcom/android/systemui/statusbar/phone/PanelView;
    if-ne p1, v2, :cond_0

    return v1

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "v":Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setChildrenDrawingOrderEnabled(Z)V

    .line 39
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 76
    const v1, 0x8cc8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 80
    :cond_0
    return v3
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .param p1, "panelBar"    # Lcom/android/systemui/statusbar/phone/PanelBar;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelHolder;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 83
    return-void
.end method

.method public setSelectedPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "pv"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getPanelIndex(Lcom/android/systemui/statusbar/phone/PanelView;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelHolder;->mSelectedPanelIndex:I

    .line 53
    return-void
.end method
