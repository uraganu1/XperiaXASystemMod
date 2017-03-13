.class public Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;
.super Landroid/widget/ImageView;
.source "ClippingTargetImageView.java"

# interfaces
.implements Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView$1;
    }
.end annotation


# instance fields
.field private mHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView$1;-><init>(Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->mHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView$1;-><init>(Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->mHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView$1;-><init>(Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->mHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView$1;-><init>(Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->mHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    .line 70
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->mHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1, p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 134
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 79
    return-object p0
.end method

.method public updateClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;)V
    .locals 1
    .param p1, "sources"    # Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->mHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->updateClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;)V

    .line 86
    return-void
.end method

.method public updateDimmerDrawn(Z)V
    .locals 1
    .param p1, "drawn"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->mHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->updateDimmerDrawn(Z)V

    .line 110
    return-void
.end method

.method public updateDrawingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->mHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->updateDrawingEnabled(Z)V

    .line 126
    return-void
.end method

.method public updateEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->mHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->updateEnabled(Z)V

    .line 118
    return-void
.end method

.method public updateMasterScaleContainer(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->mHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->updateMasterScaleContainer(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method public updatePanelContainer(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetImageView;->mHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->updatePanelContainer(Landroid/view/View;)V

    .line 94
    return-void
.end method
