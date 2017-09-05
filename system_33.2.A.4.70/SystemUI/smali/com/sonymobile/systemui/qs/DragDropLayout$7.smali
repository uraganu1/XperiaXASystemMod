.class Lcom/sonymobile/systemui/qs/DragDropLayout$7;
.super Ljava/lang/Object;
.source "DragDropLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/qs/DragDropLayout;->postRemoveDropRegions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get8(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get1(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get8(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->removeView(Landroid/view/View;)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get7(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get0(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get7(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 627
    :cond_1
    return-void
.end method
