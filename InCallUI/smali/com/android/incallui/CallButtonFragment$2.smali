.class Lcom/android/incallui/CallButtonFragment$2;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallButtonFragment;->updateButtonStates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$2;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 562
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 563
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$2;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-static {v1, v0}, Lcom/android/incallui/CallButtonFragment;->-wrap0(Lcom/android/incallui/CallButtonFragment;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 564
    const/4 v1, 0x1

    return v1
.end method
