.class public Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;
.super Ljava/lang/Object;
.source "DragDropLayout.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/DragDropLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewGroupDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 492
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 494
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 511
    :pswitch_0
    return v2

    .line 496
    :pswitch_1
    return v6

    .line 498
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get3(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get1(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get1(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get1(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v3

    .line 501
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v5

    .line 500
    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getVirtualDropIndex(FF)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap1(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/ViewGroup;I)V

    .line 505
    :goto_0
    return v6

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get0(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-static {v1, v2, v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap1(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 507
    :cond_1
    return v2

    .line 509
    :pswitch_3
    return v6

    .line 494
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
