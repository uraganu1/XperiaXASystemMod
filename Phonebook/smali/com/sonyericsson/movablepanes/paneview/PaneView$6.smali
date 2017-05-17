.class Lcom/sonyericsson/movablepanes/paneview/PaneView$6;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/movablepanes/paneview/PaneView;->clickItem(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

.field final synthetic val$id:J

.field final synthetic val$pos:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/movablepanes/paneview/PaneView;
    .param p2, "val$v"    # Landroid/view/View;
    .param p3, "val$pos"    # I
    .param p4, "val$id"    # J

    .prologue
    .line 717
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$6;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iput-object p2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$6;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$6;->val$pos:I

    iput-wide p4, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$6;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 719
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$6;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 720
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$6;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 721
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$6;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$6;->val$v:Landroid/view/View;

    iget v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$6;->val$pos:I

    iget-wide v4, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$6;->val$id:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->performItemClick(Landroid/view/View;IJ)Z

    .line 718
    return-void
.end method
