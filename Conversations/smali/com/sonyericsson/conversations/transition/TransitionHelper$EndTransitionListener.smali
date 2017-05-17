.class Lcom/sonyericsson/conversations/transition/TransitionHelper$EndTransitionListener;
.super Ljava/lang/Object;
.source "TransitionHelper.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/transition/TransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndTransitionListener"
.end annotation


# instance fields
.field private final mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/conversations/transition/TransitionHelper$EndTransitionListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/sonyericsson/conversations/transition/TransitionHelper$EndTransitionListener;)V
    .locals 0
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/transition/TransitionHelper$EndTransitionListener;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 59
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 55
    invoke-static {}, Lcom/sonyericsson/conversations/transition/TransitionHelper;->-get0()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/transition/TransitionHelper$EndTransitionListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 63
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 67
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 50
    return-void
.end method
