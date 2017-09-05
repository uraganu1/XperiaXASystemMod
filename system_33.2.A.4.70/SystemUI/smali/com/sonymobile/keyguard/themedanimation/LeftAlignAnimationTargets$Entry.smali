.class public Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;
.super Ljava/lang/Object;
.source "LeftAlignAnimationTargets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public final isRoot:Z

.field public leftOffsetInPixel:I

.field public leftOffsetViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public leftOffsetViewRefRTL:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final onlyToLeft:Z

.field public final viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;ZZI)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isRoot"    # Z
    .param p3, "onlyToLeft"    # Z
    .param p4, "leftOffsetInPixel"    # I

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->viewRef:Ljava/lang/ref/WeakReference;

    .line 193
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->isRoot:Z

    .line 194
    iput-boolean p3, p0, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->onlyToLeft:Z

    .line 195
    iput p4, p0, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->leftOffsetInPixel:I

    .line 191
    return-void
.end method


# virtual methods
.method public setLeftOffsetView(Landroid/view/View;)V
    .locals 1
    .param p1, "leftOffsetViewRef"    # Landroid/view/View;

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->leftOffsetViewRef:Ljava/lang/ref/WeakReference;

    .line 203
    :cond_0
    return-void
.end method

.method public setLeftOffsetViewRTL(Landroid/view/View;)V
    .locals 1
    .param p1, "leftOffsetViewRef"    # Landroid/view/View;

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->leftOffsetViewRefRTL:Ljava/lang/ref/WeakReference;

    .line 214
    :cond_0
    return-void
.end method
