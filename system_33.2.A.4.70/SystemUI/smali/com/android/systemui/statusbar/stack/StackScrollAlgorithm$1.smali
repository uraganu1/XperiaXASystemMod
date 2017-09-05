.class Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildMaxSizeToMaxHeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->-get0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .line 900
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->-get0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v2

    .line 899
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->-wrap0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/View;Lcom/android/systemui/statusbar/stack/AmbientState;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->-set0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;I)I

    .line 904
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 897
    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->-set0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;I)I

    goto :goto_0
.end method
