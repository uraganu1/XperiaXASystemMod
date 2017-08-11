.class public abstract Lcom/android/incallui/ZoomControl;
.super Landroid/widget/RelativeLayout;
.source "ZoomControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ZoomControl$OnZoomChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/incallui/ZoomControl$OnZoomChangedListener;

.field protected mOrientation:I

.field protected mZoomIn:Landroid/widget/ImageView;

.field protected mZoomIndex:I

.field protected mZoomMax:I

.field protected mZoomOut:Landroid/widget/ImageView;

.field protected mZoomSlider:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const v0, 0x7f0200c0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f0200c6

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f0200c3

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    .line 54
    return-void
.end method

.method private changeZoomIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mListener:Lcom/android/incallui/ZoomControl$OnZoomChangedListener;

    if-eqz v0, :cond_2

    .line 122
    iget v0, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    .line 123
    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mListener:Lcom/android/incallui/ZoomControl$OnZoomChangedListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 125
    iput p1, p0, Lcom/android/incallui/ZoomControl;->mZoomIndex:I

    .line 127
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconResourceId"    # I

    .prologue
    .line 67
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/incallui/ZoomControl;->addView(Landroid/view/View;)V

    .line 70
    return-object v0
.end method

.method public closeZoomControl()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 73
    return-void
.end method

.method protected performZoom(D)V
    .locals 5
    .param p1, "zoomPercentage"    # D

    .prologue
    .line 115
    iget v1, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v0, v2

    .line 116
    .local v0, "index":I
    iget v1, p0, Lcom/android/incallui/ZoomControl;->mZoomIndex:I

    if-ne v1, v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/incallui/ZoomControl;->changeZoomIndex(I)Z

    .line 114
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 131
    return-void
.end method
