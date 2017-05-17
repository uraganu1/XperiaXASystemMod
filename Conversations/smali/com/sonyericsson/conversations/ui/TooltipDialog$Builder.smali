.class public Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;
.super Ljava/lang/Object;
.source "TooltipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/TooltipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mOnTooltipDismissListener:Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;

.field private mPlaceAboveAnchor:Z

.field private mToolTipTextResId:I

.field private mTooltipYOffsetResId:I

.field private mWidthResId:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mOnTooltipDismissListener:Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mPlaceAboveAnchor:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mToolTipTextResId:I

    return v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mTooltipYOffsetResId:I

    return v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mWidthResId:I

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mTooltipYOffsetResId:I

    .line 51
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/TooltipDialog;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    new-instance v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;Lcom/sonyericsson/conversations/ui/TooltipDialog;)V

    return-object v0
.end method

.method public placeToolTipAboveAnchor(Z)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;
    .locals 0
    .param p1, "placeAbove"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mPlaceAboveAnchor:Z

    .line 100
    return-object p0
.end method

.method public setAnchorView(Landroid/view/View;)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;
    .locals 0
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mAnchorView:Landroid/view/View;

    .line 78
    return-object p0
.end method

.method public setOnTooltipDismissListener(Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mOnTooltipDismissListener:Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;

    .line 111
    return-object p0
.end method

.method public setText(I)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;
    .locals 0
    .param p1, "textResId"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mToolTipTextResId:I

    .line 67
    return-object p0
.end method

.method public setTooltipYOffsetResId(I)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mTooltipYOffsetResId:I

    .line 123
    return-object p0
.end method

.method public setWidth(I)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;
    .locals 0
    .param p1, "widthResId"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->mWidthResId:I

    .line 89
    return-object p0
.end method
