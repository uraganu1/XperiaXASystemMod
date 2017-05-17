.class Lcom/sonyericsson/conversations/view/SwipeableLayout$1;
.super Ljava/lang/Object;
.source "SwipeableLayout.java"

# interfaces
.implements Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/view/SwipeableLayout;->setSwipeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/view/SwipeableLayout;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/view/SwipeableLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/view/SwipeableLayout;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/SwipeableLayout$1;->this$0:Lcom/sonyericsson/conversations/view/SwipeableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeableLayout$1;->this$0:Lcom/sonyericsson/conversations/view/SwipeableLayout;

    invoke-static {v0}, Lcom/sonyericsson/conversations/view/SwipeableLayout;->-wrap0(Lcom/sonyericsson/conversations/view/SwipeableLayout;)V

    .line 74
    return-void
.end method
