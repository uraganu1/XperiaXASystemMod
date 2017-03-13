.class public Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;
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
    name = "TileDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x1

    .line 520
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 521
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 534
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 524
    :pswitch_1
    return v2

    .line 526
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get4(Lcom/sonymobile/systemui/qs/DragDropLayout;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get9(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v2

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1, v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-set1(Lcom/sonymobile/systemui/qs/DragDropLayout;Z)Z

    .line 528
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap7(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V

    goto :goto_0

    .line 532
    :pswitch_3
    return v2

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
