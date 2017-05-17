.class public Lcom/sonyericsson/conversations/ui/TooltipDialog;
.super Landroid/app/Dialog;
.source "TooltipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;,
        Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;,
        Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;
    }
.end annotation


# instance fields
.field private final mAnchorView:Landroid/view/View;

.field private mAnchorViewLayoutListener:Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;

.field private final mContext:Landroid/content/Context;

.field private mDismissedByAnchorClicked:Z

.field private final mOnTooltipDismissListener:Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;

.field private final mPlaceAboveAnchor:Z

.field private mRootView:Landroid/view/View;

.field private mToolTipTextOuterLayout:Landroid/view/View;

.field private final mToolTipTextResId:I

.field private mTooltipAnchor:Landroid/widget/ImageView;

.field private mTooltipPointer:Landroid/widget/ImageView;

.field private mTooltipWidth:I

.field private final mTooltipYOffsetResId:I

.field private final mWidthResId:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/TooltipDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/TooltipDialog;)Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorViewLayoutListener:Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/TooltipDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mDismissedByAnchorClicked:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/TooltipDialog;)Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mOnTooltipDismissListener:Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/TooltipDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mDismissedByAnchorClicked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/TooltipDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->layoutTooltipDialog()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    .prologue
    .line 188
    const v0, 0x7f09002a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mDismissedByAnchorClicked:Z

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorViewLayoutListener:Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;

    .line 190
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mContext:Landroid/content/Context;

    .line 191
    invoke-static {p2}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->-get3(Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mToolTipTextResId:I

    .line 192
    invoke-static {p2}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->-get5(Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mWidthResId:I

    .line 193
    invoke-static {p2}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->-get2(Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mPlaceAboveAnchor:Z

    .line 194
    invoke-static {p2}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->-get0(Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorView:Landroid/view/View;

    .line 195
    invoke-static {p2}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->-get1(Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mOnTooltipDismissListener:Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;

    .line 196
    invoke-static {p2}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->-get4(Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipYOffsetResId:I

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;Lcom/sonyericsson/conversations/ui/TooltipDialog;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/TooltipDialog;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;)V

    return-void
.end method

.method private static getSystemDimenValue(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 330
    .local v1, "resources":Landroid/content/res/Resources;
    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 331
    .local v0, "resourceId":I
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2
.end method

.method private initTooltip()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006f

    .line 202
    const/4 v3, 0x0

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    .line 204
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mPlaceAboveAnchor:Z

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0132

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipAnchor:Landroid/widget/ImageView;

    .line 206
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0131

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipPointer:Landroid/widget/ImageView;

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipAnchor:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipPointer:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mWidthResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipWidth:I

    .line 215
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0130

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    .local v0, "tooltipText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mToolTipTextResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 218
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    const v2, 0x7f0d012f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mToolTipTextOuterLayout:Landroid/view/View;

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->setContentView(Landroid/view/View;)V

    .line 221
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 222
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110001

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    .line 221
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 224
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->setCanceledOnTouchOutside(Z)V

    .line 226
    new-instance v1, Lcom/sonyericsson/conversations/ui/TooltipDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/TooltipDialog$1;-><init>(Lcom/sonyericsson/conversations/ui/TooltipDialog;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 235
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    new-instance v2, Lcom/sonyericsson/conversations/ui/TooltipDialog$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/TooltipDialog$2;-><init>(Lcom/sonyericsson/conversations/ui/TooltipDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipAnchor:Landroid/widget/ImageView;

    new-instance v2, Lcom/sonyericsson/conversations/ui/TooltipDialog$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/TooltipDialog$3;-><init>(Lcom/sonyericsson/conversations/ui/TooltipDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void

    .line 208
    .end local v0    # "tooltipText":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    const v2, 0x7f0d012d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipAnchor:Landroid/widget/ImageView;

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    const v2, 0x7f0d012e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipPointer:Landroid/widget/ImageView;

    goto/16 :goto_0
.end method

.method private layoutTooltipDialog()V
    .locals 21

    .prologue
    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "window"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 253
    .local v7, "display":Landroid/view/Display;
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 254
    .local v12, "size":Landroid/graphics/Point;
    invoke-virtual {v7, v12}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 255
    iget v11, v12, Landroid/graphics/Point;->x:I

    .line 256
    .local v11, "screenWidth":I
    iget v10, v12, Landroid/graphics/Point;->y:I

    .line 258
    .local v10, "screenHeight":I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v8, v0, [I

    .line 259
    .local v8, "location":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 260
    const/16 v18, 0x0

    aget v5, v8, v18

    .line 261
    .local v5, "anchorXPos":I
    const/4 v6, 0x0

    .line 264
    .local v6, "anchorYPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 265
    .local v4, "anchorView":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipAnchor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipAnchor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-virtual/range {v18 .. v20}, Landroid/widget/ImageView;->measure(II)V

    .line 273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mPlaceAboveAnchor:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 274
    const/16 v18, 0x1

    aget v18, v8, v18

    sub-int v18, v10, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipAnchor:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    sub-int v6, v18, v19

    .line 280
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->measure(II)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipAnchor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v2, v5, v18

    .line 283
    .local v2, "anchorCenterXPos":I
    move/from16 v17, v6

    .line 284
    .local v17, "windowYPos":I
    const/16 v16, 0x0

    .line 285
    .local v16, "windowXpos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v2

    move/from16 v0, v18

    if-le v0, v11, :cond_2

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v16, v11, v18

    .line 294
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipAnchor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    sub-int v19, v5, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 297
    sub-int v3, v2, v16

    .line 298
    .local v3, "anchorDialogCenterXPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipPointer:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-virtual/range {v18 .. v20}, Landroid/widget/ImageView;->measure(II)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipPointer:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipPointer:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v3, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 299
    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipYOffsetResId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipYOffsetResId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 305
    .local v9, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipPointer:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    int-to-float v0, v9

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mToolTipTextOuterLayout:Landroid/view/View;

    move-object/from16 v18, v0

    int-to-float v0, v9

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setTranslationY(F)V

    .line 309
    .end local v9    # "offset":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 310
    .local v15, "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 313
    .local v14, "tooltipWindowParams":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mPlaceAboveAnchor:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const/16 v18, 0x50

    :goto_2
    const v19, 0x800003

    or-int v18, v18, v19

    .line 312
    move/from16 v0, v18

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 314
    move/from16 v0, v16

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 315
    move/from16 v0, v17

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 316
    invoke-virtual {v15, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mTooltipWidth:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 250
    return-void

    .line 276
    .end local v2    # "anchorCenterXPos":I
    .end local v3    # "anchorDialogCenterXPos":I
    .end local v14    # "tooltipWindowParams":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "window":Landroid/view/Window;
    .end local v16    # "windowXpos":I
    .end local v17    # "windowYPos":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "status_bar_height"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->getSystemDimenValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    .line 277
    .local v13, "statusBarHeight":I
    const/16 v18, 0x1

    aget v18, v8, v18

    sub-int v6, v18, v13

    goto/16 :goto_0

    .line 287
    .end local v13    # "statusBarHeight":I
    .restart local v2    # "anchorCenterXPos":I
    .restart local v16    # "windowXpos":I
    .restart local v17    # "windowYPos":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v2, v18

    if-gez v18, :cond_3

    .line 288
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 290
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mRootView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v16, v2, v18

    goto/16 :goto_1

    .line 313
    .restart local v3    # "anchorDialogCenterXPos":I
    .restart local v14    # "tooltipWindowParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "window":Landroid/view/Window;
    :cond_4
    const/16 v18, 0x30

    goto :goto_2
.end method

.method private static loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 323
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 324
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 325
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->initTooltip()V

    .line 184
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->layoutTooltipDialog()V

    .line 181
    return-void
.end method

.method public showToolTip()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 162
    .local v0, "location":[I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 166
    aget v1, v0, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget v1, v0, v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->show()V

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorViewLayoutListener:Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;

    if-nez v1, :cond_2

    .line 175
    new-instance v1, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorView:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;-><init>(Lcom/sonyericsson/conversations/ui/TooltipDialog;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorViewLayoutListener:Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog;->mAnchorViewLayoutListener:Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 160
    :cond_2
    return-void
.end method
