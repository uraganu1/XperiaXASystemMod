.class public Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;
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
    name = "EmptyDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/DragDropLayout;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 459
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 460
    .local v0, "action":I
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    return v2

    .line 464
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 483
    :pswitch_0
    return v2

    .line 466
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap0(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    .line 467
    return v4

    .line 470
    :pswitch_2
    return v4

    .line 472
    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap2(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    .line 473
    return v4

    .line 475
    :pswitch_4
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-get3(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap8(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    .line 477
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getIndex()I

    move-result v2

    .line 477
    invoke-static {v3, v1, v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->-wrap1(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/ViewGroup;I)V

    .line 479
    return v4

    .line 481
    :cond_1
    return v4

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
