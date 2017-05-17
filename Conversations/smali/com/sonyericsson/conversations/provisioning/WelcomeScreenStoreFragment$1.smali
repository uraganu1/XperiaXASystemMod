.class Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;
.super Ljava/lang/Object;
.source "WelcomeScreenStoreFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;

.field final synthetic val$iv:Landroid/widget/ImageView;

.field final synthetic val$lyt:Landroid/widget/LinearLayout;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;
    .param p2, "val$iv"    # Landroid/widget/ImageView;
    .param p3, "val$lyt"    # Landroid/widget/LinearLayout;
    .param p4, "val$root"    # Landroid/view/View;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;->this$0:Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;->val$iv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;->val$lyt:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;->val$iv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;->val$lyt:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;->val$root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;->val$lyt:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenStoreFragment$1;->val$iv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    :cond_0
    return-void
.end method
