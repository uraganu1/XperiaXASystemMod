.class Lcom/android/incallui/CallCardFragment$2;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$2;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$2;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->secondaryInfoClicked()V

    .line 303
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$2;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->-wrap3(Lcom/android/incallui/CallCardFragment;)V

    .line 301
    return-void
.end method
