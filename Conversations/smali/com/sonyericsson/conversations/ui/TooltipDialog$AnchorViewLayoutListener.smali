.class Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;
.super Ljava/lang/Object;
.source "TooltipDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/TooltipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnchorViewLayoutListener"
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnchorX:I

.field private mAnchorY:I

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/TooltipDialog;Landroid/view/View;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/TooltipDialog;
    .param p2, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 342
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput v2, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->mAnchorX:I

    .line 339
    iput v2, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->mAnchorY:I

    .line 343
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->mAnchorView:Landroid/view/View;

    .line 344
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 345
    .local v0, "loc":[I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 346
    aget v1, v0, v2

    iput v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->mAnchorX:I

    .line 347
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->mAnchorY:I

    .line 342
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    .line 353
    .local v0, "dialog":Lcom/sonyericsson/conversations/ui/TooltipDialog;
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 354
    .local v1, "loc":[I
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 355
    const/4 v4, 0x0

    aget v2, v1, v4

    .line 356
    .local v2, "x":I
    const/4 v4, 0x1

    aget v3, v1, v4

    .line 357
    .local v3, "y":I
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 358
    iget v4, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->mAnchorX:I

    if-ne v2, v4, :cond_0

    iget v4, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->mAnchorY:I

    if-eq v3, v4, :cond_1

    .line 360
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->this$0:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->-wrap0(Lcom/sonyericsson/conversations/ui/TooltipDialog;)V

    .line 368
    :cond_1
    :goto_0
    iput v2, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->mAnchorX:I

    .line 369
    iput v3, p0, Lcom/sonyericsson/conversations/ui/TooltipDialog$AnchorViewLayoutListener;->mAnchorY:I

    .line 351
    return-void

    .line 366
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->show()V

    goto :goto_0
.end method
