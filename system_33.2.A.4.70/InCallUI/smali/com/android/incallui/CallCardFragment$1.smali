.class Lcom/android/incallui/CallCardFragment$1;
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
    .line 289
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 394
    new-instance v1, Lcom/android/incallui/CallCardFragment$1$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$1$1;-><init>(Lcom/android/incallui/CallCardFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    iput-boolean v2, v1, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonPressed:Z

    .line 291
    return-void
.end method
