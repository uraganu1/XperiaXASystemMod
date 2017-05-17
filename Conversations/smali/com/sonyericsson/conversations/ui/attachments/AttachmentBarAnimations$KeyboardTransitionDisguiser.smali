.class public Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;
.super Ljava/lang/Object;
.source "AttachmentBarAnimations.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final mAttachmentBarContainer:Landroid/view/View;

.field private final mEditorContainer:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "editorContainer"    # Landroid/view/View;
    .param p2, "attachmentBarContainer"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;->mEditorContainer:Landroid/view/View;

    .line 34
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;->mAttachmentBarContainer:Landroid/view/View;

    .line 32
    return-void
.end method

.method public static create(Landroid/view/View;Landroid/view/View;)Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;
    .locals 1
    .param p0, "editorContainer"    # Landroid/view/View;
    .param p1, "attachmentBarContainer"    # Landroid/view/View;

    .prologue
    .line 39
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method private isLandscape()Z
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 79
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    return-void

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;->mAttachmentBarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-gtz v3, :cond_2

    const/4 v1, 0x1

    .line 51
    .local v1, "isAtWindowTop":Z
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;->mAttachmentBarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    .line 53
    .local v2, "isVisible":Z
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 58
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;->mAttachmentBarContainer:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_1
    :goto_2
    return-void

    .line 50
    .end local v1    # "isAtWindowTop":Z
    .end local v2    # "isVisible":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isAtWindowTop":Z
    goto :goto_0

    .line 51
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isVisible":Z
    goto :goto_1

    .line 61
    :cond_4
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 63
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 64
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    .line 66
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;->mAttachmentBarContainer:Landroid/view/View;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 67
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;->mEditorContainer:Landroid/view/View;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 65
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 68
    const-wide/16 v4, 0x78

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 69
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 71
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;->mEditorContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAnimations$KeyboardTransitionDisguiser;->mAttachmentBarContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 66
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 67
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
