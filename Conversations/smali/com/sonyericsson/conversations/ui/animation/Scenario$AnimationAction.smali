.class Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;
.super Ljava/lang/Object;
.source "Scenario.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/animation/Scenario$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/animation/Scenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationAction"
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;->mAnimator:Landroid/animation/Animator;

    .line 260
    return-void
.end method


# virtual methods
.method public start(Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;)V
    .locals 2
    .param p1, "onCompleteListener"    # Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction$1;-><init>(Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;Lcom/sonyericsson/conversations/ui/animation/Scenario$OnCompleteListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/animation/Scenario$AnimationAction;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 265
    return-void
.end method
