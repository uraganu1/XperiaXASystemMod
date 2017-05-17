.class Lcom/sonyericsson/movablepanes/paneview/PaneView$8;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/movablepanes/paneview/PaneView;->resetPressStatus(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/movablepanes/paneview/PaneView;
    .param p2, "val$view"    # Landroid/view/View;

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$8;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iput-object p2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$8;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1256
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$8;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$8;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-wrap4(Lcom/sonyericsson/movablepanes/paneview/PaneView;Landroid/view/View;)V

    .line 1254
    return-void
.end method
