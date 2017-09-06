.class Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/incallui/widget/multiwaveview/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;


# direct methods
.method private constructor <init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 155
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 156
    invoke-virtual {p0, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/multiwaveview/Tweener;

    .line 157
    .local v0, "anim":Lcom/android/incallui/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/incallui/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "anim":Lcom/android/incallui/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->clear()V

    .line 153
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .param p1, "suspend"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->mSuspended:Z

    .line 171
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 145
    iget-boolean v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 147
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 148
    invoke-virtual {p0, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/multiwaveview/Tweener;

    .line 149
    .local v0, "anim":Lcom/android/incallui/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/incallui/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "anim":Lcom/android/incallui/widget/multiwaveview/Tweener;
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 164
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 165
    invoke-virtual {p0, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/multiwaveview/Tweener;

    .line 166
    .local v0, "anim":Lcom/android/incallui/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/incallui/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "anim":Lcom/android/incallui/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->clear()V

    .line 162
    return-void
.end method
