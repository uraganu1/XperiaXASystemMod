.class Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$1;
.super Ljava/lang/Object;
.source "OneHandedLayout.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->initLayoutTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$1;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 91
    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    .line 92
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0126

    if-eq v1, v0, :cond_0

    .line 93
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0129

    if-ne v1, v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$1;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->-wrap0(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;)V

    .line 90
    :cond_1
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 84
    return-void
.end method
