.class Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Scenario.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;->start(Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;

.field final synthetic val$onCompleteListener:Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;
    .param p2, "val$onCompleteListener"    # Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction$1;->this$1:Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction$1;->val$onCompleteListener:Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction$1;->val$onCompleteListener:Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;->onComplete()V

    .line 268
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction$1;->val$onCompleteListener:Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;->onComplete()V

    .line 273
    return-void
.end method
