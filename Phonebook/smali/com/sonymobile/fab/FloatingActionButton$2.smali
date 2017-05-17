.class Lcom/sonymobile/fab/FloatingActionButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/fab/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/sonymobile/fab/FloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/fab/FloatingActionButton;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/fab/FloatingActionButton$2;->this$0:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton$2;->this$0:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/sonymobile/fab/FloatingActionButton;->-wrap0(Lcom/sonymobile/fab/FloatingActionButton;)V

    .line 67
    return-void
.end method
