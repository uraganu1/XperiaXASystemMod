.class public Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;
.super Ljava/lang/Object;
.source "ViewAnimation.java"


# instance fields
.field currentStackViewCount:I

.field currentStackViewIndex:I

.field currentTaskOccludesLaunchTarget:Z

.field currentTaskRect:Landroid/graphics/Rect;

.field currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field public postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

.field updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "t"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 47
    return-void
.end method
