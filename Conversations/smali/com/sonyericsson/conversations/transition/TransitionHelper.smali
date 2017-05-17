.class public Lcom/sonyericsson/conversations/transition/TransitionHelper;
.super Ljava/lang/Object;
.source "TransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/transition/TransitionHelper$EndTransitionListener;
    }
.end annotation


# static fields
.field private static sRunningTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/ViewGroup;",
            "Landroid/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/sonyericsson/conversations/transition/TransitionHelper;->sRunningTransitions:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/transition/TransitionHelper;->sRunningTransitions:Ljava/util/Map;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginOrIgnoreDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Begin transition shall be called from UI thread only"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/transition/TransitionHelper;->sRunningTransitions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    return-void

    .line 36
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/transition/TransitionHelper;->sRunningTransitions:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/sonyericsson/conversations/transition/TransitionHelper$EndTransitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/transition/TransitionHelper$EndTransitionListener;-><init>(Landroid/view/ViewGroup;Lcom/sonyericsson/conversations/transition/TransitionHelper$EndTransitionListener;)V

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 38
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 29
    return-void
.end method
