.class Lcom/android/contacts/quickcontact/QuickContactActivity$11;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 857
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get8(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get18(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get18(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get18(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollNeededToBeFullScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->setScroll(I)V

    .line 859
    :cond_0
    return-void
.end method
