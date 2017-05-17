.class Lcom/android/contacts/widget/MultiShrinkScroller$9;
.super Ljava/lang/Object;
.source "MultiShrinkScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;->scrollDown(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/widget/MultiShrinkScroller;


# direct methods
.method constructor <init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/widget/MultiShrinkScroller;

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$9;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 986
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$9;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get3(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$9;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->-get3(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onScrolledOffBottom()V

    .line 989
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$9;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->-set1(Lcom/android/contacts/widget/MultiShrinkScroller;Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    .line 985
    :cond_0
    return-void
.end method
