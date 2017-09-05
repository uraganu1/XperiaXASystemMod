.class public Lcom/sonymobile/systemui/statusbar/MarginUpdater;
.super Ljava/lang/Object;
.source "MarginUpdater.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateBottomMargin(Landroid/content/Context;Landroid/view/View;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bottomMarginId"    # I

    .prologue
    .line 18
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 19
    :cond_0
    return-void

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 24
    .local v1, "margin":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 30
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v3, :cond_2

    .line 31
    return-void

    .line 25
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    return-void

    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    move-object v3, v2

    .line 34
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 35
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    return-void
.end method
